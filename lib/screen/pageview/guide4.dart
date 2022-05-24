import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smartdoorapp/main.dart';

class intro4 extends StatefulWidget {
  const intro4({Key key}) : super(key: key);

  @override
  _intro4State createState() => _intro4State();
}

class _intro4State extends State<intro4> {

  final stylehead = TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black);
  final stylenormal = TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 200,
              //child:  Text("Connecting with",style: TextStyle(color: Colors.pinkAccent),),
              child: //Lottie.network("https://assets6.lottiefiles.com/packages/lf20_gigyrcoy.json", animate: true),
              Lottie.asset(
                'images/lottie/59875-home.json',
              ),),
            Text(
              "Safty home with us",
                style: GoogleFonts.prompt(textStyle: stylehead)),
            SizedBox(
              height: 30,
            ),
            Text(
              'อุ่นใจเมื่อใช้แอพพลิเคชั่นเรา',
                style: GoogleFonts.prompt(textStyle: stylenormal)),
            Text(
              'คลิกเริ่มต้นเพื่อเริ่มใช้งาน',
                style: GoogleFonts.prompt(textStyle: stylenormal)),
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
      ),
    );
  }
}
