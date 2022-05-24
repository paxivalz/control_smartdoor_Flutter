import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:smartdoorapp/model/SaveData.dart';

class SavedataDB {
  //บริการฐานข้อมูล

  String dbName; //ชื่อฐานขอมูล
  //ถ้ายังไม่ถูกสร้าง => สร้าง
  //ถ้าสร้างไว้แล้ว => เปิด
  SavedataDB({this.dbName});

  //หาตำแหน่งผู้ใช้ path ข้อมูลของผู้ใช้แต่ละคน เช่น
  //ใน Window -> c:/users/document
  //ใน phone -> user/0/document

  Future<Database> openDatabase() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDirectory.path, dbName);
    //return dbLocation; //รู้ที่อยู่ข้อมูลจากตรงนี้

    //สร้าง database
    DatabaseFactory dbFactory = await databaseFactoryIo;
    Database db = await dbFactory.openDatabase(dbLocation);
    return db;
  }

  //saveDATA
  Future<int> InsertData(Savedatas statement) async {
    //ฐานข้อมูล => Store
    //transaction.db => expense //store//
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");

    //sava in .json file
    var keyID = store.add(db, {
      "title": statement.title,
      "button": statement.button,
      "date": statement.date.toIso8601String()
    });
    db.close();
    return keyID;
  }

  //ดึงข้อมูลมาแสดงผล
  Future<List<Savedatas>> loadAllData() async {
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");
    var snapshot = await store.find(
        db,finder: Finder(
        sortOrders: [SortOrder(Field.key,false)]
    ));//เรียงลำดับจากใหม่ไปเก่า
    List savedataList = List<Savedatas>();
    for (var record in snapshot) {
      savedataList.add(Savedatas(
          title: record["title"],
          button: record["button"],
          date: DateTime.parse(record["date"])));
    }
    //print(snapshot);
    return savedataList;
  }
}
