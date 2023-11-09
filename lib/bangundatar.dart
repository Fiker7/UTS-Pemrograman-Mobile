import 'package:flutter/material.dart';

class Bangundatar extends StatefulWidget {
  const Bangundatar({super.key});

  @override
  State<Bangundatar> createState() => _BangundatarState();
}

class _BangundatarState extends State<Bangundatar> {
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();

  String hasil = "";

  void hitungLuas() {
    double panjangController = double.parse(panjang.text);
    double lebarController = double.parse(lebar.text);

    double luas = panjangController * lebarController;

    setState(() {
      hasil = "${luas.toStringAsFixed(2)} cm^2";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 227, 203),
      appBar: AppBar(
        title: Text(
          "BANGUN DATAR",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Arial',
            fontSize: 25,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 217, 180, 147),
        elevation: 0.0,
        toolbarHeight: 70,
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(
            top: 25,
          )),
          Center(
            child: Text(
              'Menghitung Luas',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Arial',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.0,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Center(
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 232, 232, 128),
              child: SizedBox(
                width: 300,
                height: 560,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 189, 189, 113),
                        radius: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/persegipanjang.png"), //NetworkImage
                          radius: 73,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Persegi Panjang',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      TextField(
                        controller: panjang,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white), // Warna biru saat aktif
                          ),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(50),
                              borderSide: new BorderSide(color: Colors.white)),
                          filled: true,
                          labelText: "Panjang",
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      TextField(
                        controller: lebar,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white), // Warna biru saat aktif
                          ),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(50),
                              borderSide: new BorderSide(color: Colors.white)),
                          filled: true,
                          labelText: "Lebar",
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),

                      Padding(padding: EdgeInsets.only(top: 5)),
                      SizedBox(
                        width: 135,
                        child: InkWell(
                          onTap: () {
                            hitungLuas();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.touch_app,
                                  color: Color.fromARGB(255, 189, 189, 113),
                                ),
                                Text(
                                  'Hitung Luas',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 169, 169, 32)),
                                ),
                              ],
                            ), //Row
                          ), //Padding
                        ), //RaisedButton
                      ),
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Text(
                        hasil,
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 100, 67, 166),
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ),
        ],
      ),
    );
  }
}
