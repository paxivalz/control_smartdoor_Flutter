import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class intro1 extends StatefulWidget {
  const intro1({Key key}) : super(key: key);

  @override
  _intro1State createState() => _intro1State();
}

class _intro1State extends State<intro1> {

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
              child: Lottie.asset(
                'images/lottie/11323-sad-search.json',
              ),),
            Text(
              "Select your device",
              style: GoogleFonts.prompt(textStyle: stylehead),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'เริ่มแรกเลือกอุปกรณ์ที่ต้องการจะเชื่อมต่อ',
              style: GoogleFonts.prompt(textStyle: stylenormal),
            ),
            Text(
              'โดยเลือกเป็น RaspberryPi -> Select',
              style: GoogleFonts.prompt(textStyle: stylenormal),
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              '                                           เลื่อนเพื่อดูหน้าถัดไปหน้าถัดไป->',
              style: GoogleFonts.prompt(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
