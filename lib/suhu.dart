import 'package:flutter/material.dart';

class Suhu extends StatefulWidget {
  const Suhu({super.key});

  @override
  State<Suhu> createState() => _SuhuState();
}

class _SuhuState extends State<Suhu> {
  TextEditingController suhu = TextEditingController();
  final items = [
    'Celcius ke Fahrenheit',
    'Celcius ke Reamur',
    'Celcius ke Kelvin'
  ]; // Opsi konversi mata uang
  String? selectedOption;
  String hasil = "";

  void hitungKonversi() {
    double inputController = double.parse(suhu.text);
    if (selectedOption == 'Celcius ke Fahrenheit') {
      double hasilKonversi = ((9 / 5) * inputController) + 32;
      setState(() {
        hasil =
            "Hasil Konversi : ${hasilKonversi.toStringAsFixed(2)} Derajat Fahrenheit";
      });
    } else if (selectedOption == 'Celcius ke Reamur') {
      double hasilKonversi = (4 / 5) * inputController;
      setState(() {
        hasil =
            "Hasil Konversi : ${hasilKonversi.toStringAsFixed(2)} Derajat Reamur";
      });
    } else if (selectedOption == 'Celcius ke Kelvin') {
      double hasilKonversi = inputController + 273;
      setState(() {
        hasil =
            "Hasil Konversi : ${hasilKonversi.toStringAsFixed(2)} Derajat Kelvin";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Konversi Suhu",
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
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
        child: ListView(
          children: [
            TextField(
              controller: suhu,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black),
                ),
                filled: true,
                labelText: "Suhu Celcius",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Masukkan Suhu Dalam Celcius",
                fillColor: const Color.fromARGB(255, 235, 250, 239),
                prefixIcon: Icon(Icons.thermostat, color: Colors.black),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 4),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 36,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  isExpanded: true,
                  value: selectedOption,
                  items: items.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => selectedOption = value),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 100, right: 100),
              child: ElevatedButton(
                onPressed: hitungKonversi,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  primary: Color.fromARGB(255, 235, 250, 239),
                  onPrimary: Color.fromARGB(255, 43, 217, 89),
                  fixedSize: Size(50, 50),
                ),
                child: Text(
                  'Konversi',
                  style: TextStyle(fontFamily: 'Roboto'),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Center(
              child: Text(
                hasil,
                style: TextStyle(
                  color: const Color.fromARGB(255, 26, 67, 78),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
