import 'package:flutter/material.dart';

import 'package:utspemmob/bmi.dart';
import 'package:utspemmob/konversiUang.dart';
import 'package:utspemmob/suhu.dart';
import 'package:utspemmob/bangundatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Color> colors = [
    Color.fromARGB(255, 156, 219, 240),
    Color.fromARGB(255, 144, 223, 149),
    Color.fromARGB(255, 121, 219, 212),
    Color.fromARGB(255, 232, 232, 128),
    const Color.fromARGB(255, 250, 243, 235),
    const Color.fromARGB(255, 235, 250, 239),
    const Color.fromARGB(255, 229, 222, 246),
    const Color.fromARGB(255, 250, 243, 235),
    const Color.fromARGB(255, 235, 250, 239),
    const Color.fromARGB(255, 229, 222, 246),
  ];

  final List<IconData> iconns = [
    Icons.accessibility,
    Icons.payments,
    Icons.device_thermostat,
    Icons.rectangle,
  ];
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const Chart()));
  final List<Widget> link = [
    BMI(),
    konversiUang(),
    Suhu(),
    Bangundatar(),
  ];

  final List<String> teks = [
    "BMI",
    "Konversi Mata Uang",
    "Konversi Suhu",
    "Perhitungan Bangun Datar"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 217, 180, 147),
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 60),
            child: Text(
              'APPAPUN',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Arial',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Text(
              'Aplikasi yang bisa digunakan untuk apapun!',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                  height: 2),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 500,
            padding: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: ListView(
              children: [
                Row(
                  children: [
                    Text(
                      'Fitur',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Container(
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      Color color = colors[index % colors.length];
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Card(
                          color: color,
                          margin: const EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => link[index]));
                            },
                            splashColor: Colors.blue,
                            child: Row(
                              children: [
                                Container(
                                  height: 90.0,
                                  width: 80.0,
                                  child: Center(
                                    child: Icon(
                                      iconns[index],
                                      color: const Color.fromARGB(
                                          255, 26, 67, 78), // Warna ikon
                                      size: 30, // Ukuran ikon
                                    ),
                                  ),
                                ),
                                Text(teks[index],
                                    style: TextStyle(fontSize: 17.0)),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
