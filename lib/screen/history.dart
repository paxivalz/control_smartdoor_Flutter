import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:smartdoorapp/model/SaveData.dart';
import 'package:smartdoorapp/provider/savedata_provider.dart';
import 'package:smartdoorapp/screen/navigation.dart';

class History extends StatefulWidget {
  const History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  void initState() {
    super.initState();
    //เตรียมข้อมูลแสดงผลข้อมูลครั้งแรก
    Provider.of<SavedataProvider>(context, listen: false).initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5C6BC0),
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        //centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF5C6BC0),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "History",
                textAlign: TextAlign.left,
                style: GoogleFonts.prompt(
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.power_settings_new_rounded),
            color: Colors.white,
            onPressed: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
          ),
          Container(padding: EdgeInsets.only(top: 30), child: Listhis()),
        ],
      ),
    );
  }
}

class Listhis extends StatelessWidget {
  const Listhis({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, SavedataProvider provider, Widget child) {
          var count = provider.savedatas.length; //นับจำนวนข้อมูล
          if(count<=0){
            return Center(
              child: Text("No data",style: GoogleFonts.prompt(fontSize: 20,color: Colors.grey),),
            );
          }
          else{
            return ListView.builder(
                itemCount: count,
                itemBuilder: (context, int index) {
                  Savedatas data = provider.savedatas[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    shadowColor: Color(0xFF5C6BC0),
                    color: Colors.white,
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFF5C6BC0),
                        child: FittedBox(
                          child: Text(
                            data.button,
                            style: GoogleFonts.prompt(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      title: Text(
                        data.title,
                        style: GoogleFonts.prompt(fontSize: 20),
                      ),
                      subtitle:
                      Text(DateFormat("dd/MM/yyyy HH:mm:ss").format(data.date),style: GoogleFonts.prompt()),
                    ),
                  );
                });
          }

    });
  }
}
