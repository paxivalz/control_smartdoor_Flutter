import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:smartdoorapp/main.dart';
import 'package:smartdoorapp/provider/savedata_provider.dart';
import 'package:smartdoorapp/screen/about.dart';
import 'package:smartdoorapp/screen/guide.dart';
import 'package:smartdoorapp/screen/history.dart';
import 'package:flutter/widgets.dart';

class NavigationDrawerWidget extends StatefulWidget {
  //const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          //Container(
          //  color: Colors.black12,
          //),
          Container(
            margin: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListView(
              padding:  EdgeInsets.symmetric(horizontal: 18.0),
              children: [
                SizedBox(
                  height: 100,
                  //child:  Text("Connecting with",style: TextStyle(color: Colors.pinkAccent),),
                  child: //Lottie.network("https://assets6.lottiefiles.com/packages/lf20_gigyrcoy.json", animate: true),
                  Lottie.asset(
                    'images/lottie/70645-animo-mark.json',
                  ),),
                Container(
                  child: Text("SmartDoor",style: GoogleFonts.syncopate(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 11),),
                ),
                SizedBox(height: 80,),
                Divider(),
                ListTile(
                  leading: Icon(Icons.devices,color: Colors.white,),
                  //title: Text('Select Device'),
                  onTap: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return MyHome();
                      })),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.access_time,color: Colors.white),
                  //title: Text('History'),
                  onTap: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return History();
                      })),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help_outline,color: Colors.white),
                  //title: Text('Help'),
                  onTap: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Guidepage();
                      })),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.favorite_outlined,color: Colors.white),
                  //title: Text('About us'),
                  onTap: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AboutUs();
                      })),
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.exit_to_app_rounded,color: Colors.white),
                    //title: Text('Exit'),
                    onTap: () => SystemNavigator.pop()),
              ],
            ),
          )
        ],
      );

  }
}





