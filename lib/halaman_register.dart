import 'package:flutter/material.dart';

import 'package:utspemmob/halaman_login.dart';

class halRegister extends StatefulWidget {
  const halRegister({super.key});

  @override
  State<halRegister> createState() => _halRegisterState();
}

class _halRegisterState extends State<halRegister> {
  TextEditingController usernameinput = TextEditingController();
  TextEditingController passwordinput = TextEditingController();
  TextEditingController passrepeatinput = TextEditingController();
  String message1 = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/loginregister.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.0),
                    ),
                    Container(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 33,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Create new account",
                        style: TextStyle(fontSize: 15, color: Colors.black26),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    Center(
                      child: Card(
                        elevation: 25,
                        shadowColor: Colors.black,
                        // color: Color.fromARGB(255,255,229,0),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: SizedBox(
                          width: 350,
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(20.10),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 40.0),
                                    ),
                                    Container(
                                        child: TextField(
                                      controller: usernameinput,
                                      maxLength: 50,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors
                                                  .black), // Warna biru saat aktif
                                        ),

                                        border: new OutlineInputBorder(
                                            borderRadius:
                                                new BorderRadius.circular(50),
                                            borderSide: new BorderSide(
                                                color: Colors.black)),
                                        filled: true,
                                        labelText: "Email",
                                        labelStyle: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 26, 67, 78)),
                                        hintText: "Input Email",
                                        helperText: "Use ...@gmail.com",
                                        prefixIcon: Icon(Icons.mail,
                                            color: Color.fromARGB(255, 26, 67,
                                                78)), //icon didepan
                                      ),
                                    )),
                                    Container(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: TextFormField(
                                          controller: passwordinput,
                                          // obscureText: true,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors
                                                      .black), // Warna biru saat aktif
                                            ),
                                            border: new OutlineInputBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        50),
                                                borderSide: new BorderSide(
                                                    color: Colors.black)),
                                            filled: true,
                                            // fillColor: Color.fromARGB(255, 82, 82, 82).withOpacity(0.6),
                                            labelText: "Password",
                                            labelStyle: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 26, 67, 78)),
                                            hintText: "Make Password",
                                            helperText:
                                                "Use combination Password",
                                            // prefixIcon: Icon(Icons.supervisor_account), //icon didepan
                                            prefixIcon: Icon(Icons.lock,
                                                color: Color.fromARGB(255, 26,
                                                    67, 78)), //icon didepan
                                          ),
                                        )),
                                    Container(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: TextFormField(
                                          controller: passrepeatinput,
                                          // obscureText: true,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors
                                                      .black), // Warna biru saat aktif
                                            ),
                                            border: new OutlineInputBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        50),
                                                borderSide: new BorderSide(
                                                    color: Colors.black)),
                                            filled: true,
                                            // fillColor: Color.fromARGB(255, 82, 82, 82).withOpacity(0.6),
                                            labelText: "Repeat Password",
                                            labelStyle: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 26, 67, 78)),
                                            hintText: "Repeat Password",
                                            helperText: message1,
                                            // prefixIcon: Icon(Icons.supervisor_account), //icon didepan
                                            prefixIcon: Icon(Icons.lock,
                                                color: Color.fromARGB(255, 26,
                                                    67, 78)), //icon didepan
                                          ),
                                        )),
                                    Container(
                                      padding: EdgeInsets.only(top: 50.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              // Aksi yang ingin Anda lakukan saat tombol ditekan
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        halLogin()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0)),
                                              primary: Color.fromARGB(
                                                  255,
                                                  217,
                                                  180,
                                                  147), // Warna latar belakang tombol
                                              onPrimary: Colors
                                                  .white, // Warna teks tombol (saat tombol tidak aktif)
                                              fixedSize: Size(120, 50),
                                            ),
                                            child: Text(
                                              'BACK',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                          // SizedBox(width: 10.0),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.0, right: 10.0),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Aksi yang ingin Anda lakukan saat tombol ditekan
                                              String usernameinput1 =
                                                  usernameinput.text;
                                              String passwordinput1 =
                                                  passwordinput.text;
                                              String passrepeatinput1 =
                                                  passrepeatinput.text;

                                              if ((usernameinput1.isEmpty ||
                                                      passwordinput1.isEmpty ||
                                                      passrepeatinput1
                                                          .isEmpty) ||
                                                  !(passwordinput1 ==
                                                      passrepeatinput1)) {
                                                setState(() {
                                                  message1 =
                                                      ("Isi Username dan password");
                                                });
                                              } else {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          "Berhasil buat Akun"),
                                                      content: Text(
                                                          "Silahkan Sign In menggunakan Akun Email dan Password yang sudah di daftarkan"),
                                                      actions: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop(); // Tutup dialog
                                                            // Arahkan ke halaman sign-in
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        halLogin(),
                                                              ),
                                                            );
                                                          },
                                                          child: Text("OK"),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                              ;
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0)),
                                              primary: Color.fromARGB(
                                                  255,
                                                  217,
                                                  180,
                                                  147), // Warna latar belakang tombol
                                              onPrimary: Colors
                                                  .white, // Warna teks tombol (saat tombol tidak aktif)
                                              fixedSize: Size(120, 50),
                                            ),
                                            child: Text(
                                              'SUBMIT',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
