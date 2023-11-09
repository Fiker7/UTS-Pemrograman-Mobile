import 'package:flutter/material.dart';

import 'package:utspemmob/home.dart';
import 'package:utspemmob/kalkulator.dart';
import 'package:utspemmob/profiledeveloper.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: SizedBox(
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 217, 180, 147),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.calculate),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.account_circle),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        body: <Widget>[
          Container(
            child: HomePage(),
          ),
          Container(
            child: Kalkulator(),
          ),
          Container(
            child: profDev(),
          ),
        ][currentIndex]);
  }
}
