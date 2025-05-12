// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E01PageUI extends StatefulWidget {
  const E01PageUI({super.key});

  @override
  State<E01PageUI> createState() => _E01PageUIState();
}

class _E01PageUIState extends State<E01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/imge1.png',
              height: 550,
            ),
            Text(
              'BERRY JUICE',
              style: GoogleFonts.libreBaskerville(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'A "Moments of healthy sip',
            ),
            Text(
              'The best vitamin for your health',
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => E02PageUI(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.zero, // สำคัญเพื่อให้ gradient ครอบปุ่มพอดี
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor:
                      Colors.transparent, // โปร่งใส เพื่อโชว์ gradient
                  shadowColor:
                      Colors.transparent, // เอาเงาออกถ้าไม่ต้องการทับ gradient
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.orange[300]!,
                        Colors.orange[600]!,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore Now',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            20), // padding ซ้ายขวาให้ไอคอนกับข้อความไม่ติดขอบ
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
