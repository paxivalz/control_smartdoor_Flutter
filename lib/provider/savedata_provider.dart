import 'package:flutter/foundation.dart';
import 'package:smartdoorapp/database/savedata_db.dart';
import 'package:smartdoorapp/model/SaveData.dart';


class SavedataProvider with ChangeNotifier {

  List<Savedatas> savedatas = [
  ];
  //ดึงข้อมูล
  List<Savedatas> getSavedata() {
    return savedatas;
  }

  void initData() async {
    //ส่วนที่ดึงข้อมูลมาแสดงผลในหน้า history
    var db = SavedataDB(dbName: "savedatas.db");
    //ดึงข้อมูลมาแสดงผล
    savedatas = await db.loadAllData();
    notifyListeners();
  }

  void addSavedata(Savedatas statement) async {
    var db = SavedataDB(dbName: "savedatas.db");
    //print(db); //ดู path ข้อมูลในมือถือเราก่อนว่าเก็บตำแหน่งไหน
    await db.InsertData(statement);
    //ดึงข้อมูลมาแสดงผล
    savedatas = await db.loadAllData();
    //แจ้งเตือน consumer
    notifyListeners();
  }
}
