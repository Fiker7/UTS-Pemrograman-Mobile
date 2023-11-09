import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  TextEditingController hasil = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Padding(padding: EdgeInsets.only(top: 40.0),),
          TextField(
            controller: angka1,
            decoration: InputDecoration(labelText: "Masukkan angka pertama"),
          ),
          TextField(
            controller: angka2,
            decoration: InputDecoration(labelText: "Masukkkan angka kedua"),
          ),
          TextField(
            controller: hasil,
            decoration: InputDecoration(labelText: "Hasil"),
          ),
          Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang ingin Anda lakukan saat tombol ditekan
                    hasil.text =
                        (double.parse(angka1.text) + double.parse(angka2.text))
                            .toString();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(
                        255, 217, 180, 147), // Warna latar belakang tombol
                    onPrimary: Colors
                        .white, // Warna teks tombol (saat tombol tidak aktif)
                    fixedSize: Size(160, 50),
                  ),
                  child: Text(
                    'Tambah',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang ingin Anda lakukan saat tombol ditekan
                    hasil.text =
                        (double.parse(angka1.text) - double.parse(angka2.text))
                            .toString();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(
                        255, 217, 180, 147), // Warna latar belakang tombol
                    onPrimary: Colors
                        .white, // Warna teks tombol (saat tombol tidak aktif)
                    fixedSize: Size(160, 50),
                  ),
                  child: Text(
                    'Kurang',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang ingin Anda lakukan saat tombol ditekan
                    hasil.text =
                        (double.parse(angka1.text) / double.parse(angka2.text))
                            .toString();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(
                        255, 217, 180, 147), // Warna latar belakang tombol
                    onPrimary: Colors
                        .white, // Warna teks tombol (saat tombol tidak aktif)
                    fixedSize: Size(160, 50),
                  ),
                  child: Text(
                    'Bagi',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang ingin Anda lakukan saat tombol ditekan
                    hasil.text =
                        (double.parse(angka1.text) * double.parse(angka2.text))
                            .toString();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(
                        255, 217, 180, 147), // Warna latar belakang tombol
                    onPrimary: Colors
                        .white, // Warna teks tombol (saat tombol tidak aktif)
                    fixedSize: Size(160, 50),
                  ),
                  child: Text(
                    'Kali',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
