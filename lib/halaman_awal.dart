import 'package:flutter/material.dart';

import 'package:utspemmob/halaman_login.dart';

class halAwal extends StatefulWidget {
  const halAwal({super.key});

  @override
  State<halAwal> createState() => _halAwalState();
}

class _halAwalState extends State<halAwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 227, 203),
      ),
      // padding: EdgeInsets.only(top: 100, bottom: 50, left: 40, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 50),
            child: Text(
              "Aplikasi Appapun!",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Arial',
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.0,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "Banyak Fitur-Fitur yang Tersedia",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Arial',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                  height: 2),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: GestureDetector(
              onTap: () {
                // Arahkan ke halaman selanjutnya ketika teks diklik
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => halLogin(),
                  ),
                );
              },
              child: Text(
                "Get started",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "....    .............  .",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Color.fromARGB(255, 195, 244, 77),
                decorationThickness: 6.0,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
