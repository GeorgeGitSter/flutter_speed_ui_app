import 'package:flutter/material.dart';

class C01PageUI extends StatefulWidget {
  const C01PageUI({super.key});

  @override
  State<C01PageUI> createState() => _C01PageUIState();
}

class _C01PageUIState extends State<C01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          // ใช้ Stack เพื่อซ้อนทับ Widget
          children: [
            Image.asset(
              'assets/images/imgc1.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              // ใช้ Positioned เพื่อกำหนดตำแหน่งของ imgc2
              top: 280,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/imgc2.png',
                ),
              ),
            ),
            Positioned.fill(
              top: 410,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Hope for \nHumanity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 620,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Welcome to \nHope for Humanity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF005014),
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
