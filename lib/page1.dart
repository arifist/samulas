// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'main.dart';
//
// class page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selam $userName'),
//       ),
//       body: Column(
//         children: <Widget>[
//           ElevatedButton(
//             child: Text('Geri'),
//             onPressed: () {
//               Navigator.restorablePushReplacementNamed(context, '/page2');
//             },
//           ),
//
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0),
//             child: Container(
//               margin: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadiusDirectional.circular(20),
//                   border: Border.all(color: Colors.black),
//                   color: Colors.green),
//               height: 200,
//               width: 400,
//               child: Center(
//                 child: Text(
//                   "Kullanıcı Adı:  $userName\n"
//                       "Şifre:  $tur1_saat  $passWord\n",
//
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//
//   }
// }



import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'main.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  SizedBox(height: 50,),
                  Card(
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Color(0xFFBD2A2E),
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    elevation: 15.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "TUR 1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saat :   $tur1_saat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Tren :   $tur1_tren",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harf :   $tur1_harf",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),

                  SizedBox(height:50,),

                  Card(
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                    elevation: 15.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "TUR 2",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saat :   $tur2_saat",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Tren :   $tur2_tren",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harf :   $tur2_harf",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 50,),

                  Card(
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Color(0xFFB2BEBF),
                    shadowColor: Color.fromARGB(255, 75, 157, 196),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    elevation: 15.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "TUR 3 ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saat :   $tur3_saat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Tren :   $tur3_tren",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harf :   $tur3_harf",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),

                  SizedBox(height:30,),

                  Container(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.restorablePushReplacementNamed(context, '/page2');
                      },
                      child: Text("GERİ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.black,
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
