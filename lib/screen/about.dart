import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smartdoorapp/main.dart';
import 'package:smartdoorapp/screen/navigation.dart';


class AboutUs extends StatelessWidget {

  final stylehead = TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black);
  final stylenormal = TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5C6BC0),
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('About Us',style: GoogleFonts.prompt(color: Colors.white),),
        backgroundColor: Color(0xFF5C6BC0),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Column(
            children: [
              SizedBox(height: 10,),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.power_settings_new_rounded),
            color: Colors.white,
            onPressed: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
      body:
      ListView(
        children: [
          Container(
            height: 50,
            decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(0))),
          ),
          Container(
            height: 604,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Thank You",
                  style: GoogleFonts.prompt(textStyle: stylehead),
                ),
                SizedBox(
                  child: Lottie.asset(
                    'images/lottie/93577-contact.json',
                  ),),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'We are Software devolope and',
                  style: GoogleFonts.prompt(textStyle: stylenormal),
                ),
                Text(
                  'Mobile devolope team. Please -',
                  style: GoogleFonts.prompt(textStyle: stylenormal),
                ),
                Text(
                  'contact us at kmutnb@email.ac.th',
                  style: GoogleFonts.prompt(textStyle: stylenormal),
                ),
                SizedBox(
                  height: 100,
                ),
                RaisedButton(
                  onPressed: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return MyHome();
                      })),
                  color: Colors.blue[300],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("start",style: GoogleFonts.prompt(color: Colors.white,fontWeight: FontWeight.normal),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}