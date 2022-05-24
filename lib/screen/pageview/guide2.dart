import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class intro2 extends StatefulWidget {
  const intro2({Key key}) : super(key: key);

  @override
  _intro2State createState() => _intro2State();
}

class _intro2State extends State<intro2> {

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
                'images/lottie/90454-open-door.json',
              ),),
            Text(
              "Connecting the door",
              style: GoogleFonts.prompt(textStyle: stylehead),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'ทำการสั่ง OPEN / CLOSE เพื่อเปิดปิดประตู',
              style: GoogleFonts.prompt(textStyle: stylenormal),
            ),
            Text(
              'โดยจะบันทึกเวลาการกดใช้งานทุกครั้ง',
              style: GoogleFonts.prompt(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
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
