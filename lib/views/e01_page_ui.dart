// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
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
            ElevatedButton(
              onPressed: () {},
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 80,
                  55,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
