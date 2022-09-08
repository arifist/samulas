// // import 'dart:convert';
// // import 'package:flutter/cupertino.dart';
// // import 'package:get_mysql_data/page1.dart';
// //
// // import 'main.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get_mysql_data/date.dart';
// // import 'package:get_mysql_data/main.dart';
// // import 'package:http/http.dart' as http;
// //
// //
// // class page2 extends StatelessWidget {
// //   String? date;
// //   TextEditingController d = TextEditingController();
// //
// //   Future ileri() async {
// //     final response = await http.post(
// //         Uri.parse("http://10.0.2.2/login/register.php"), body: {
// //       "date": d.text,
// //     });
// //     var datauser = json.decode(response.body);
// //     if (datauser[0]['level'] == 'admin') {
// //       //Navigator.restorablePushReplacementNamed(context, '/page1');
// //       print("başarılı");
// //     }
// //     else {
// //       print("başarısız");
// //     }
// //     return datauser[0];
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         backgroundColor: Colors.white,
// //         body: SafeArea(
// //           child: Center(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 SizedBox(height: 50.0,),
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
// //                   child: Container(
// //                     width: 300,
// //                     decoration: BoxDecoration(
// //                       color: Color.fromARGB(255, 230, 230, 230),
// //                       border: Border.all(color: Color(0xFFED1A34)),
// //                       borderRadius: BorderRadius.circular(25.0),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 25,),
// //
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
// //                   child: Container(
// //                     width: 300,
// //                     decoration: BoxDecoration(
// //                       color: Color.fromARGB(255, 230, 230, 230),
// //                       border: Border.all(color: Color(0xFFED1A34)),
// //                       borderRadius: BorderRadius.circular(25.0),
// //                     ),
// //
// //                     child: Padding(
// //                       padding: const EdgeInsets.only(left: 10.0),
// //                       child: TextField(
// //                         controller: d,
// //                         textAlign: TextAlign.center,
// //                         decoration: InputDecoration(
// //                           border: InputBorder.none,
// //                           hintText: "Tarih ", hintStyle: TextStyle(
// //                           color: Colors.white,
// //                           fontWeight: FontWeight.bold,
// //                           fontSize: 17,
// //                         ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 50),
// //                 Container(
// //                   width: 120,
// //                   height: 50,
// //                   child: ElevatedButton(onPressed: () async {
// //                     final response = await http.post(
// //                         Uri.parse("http://10.0.2.2/login/login2.php"), body: {
// //                       "date": d.text,
// //                     });
// //                     var datauser = json.decode(response.body);
// //
// //                     if (datauser[0]['level'] == 'admin') {
// //                       Navigator.restorablePushReplacementNamed(context, '/page1');
// //                       print("başarılı");
// //                     }
// //                     else {
// //                       print("başarısız");
// //                     }
// //                     return datauser[0];
// //                   },
// //                     style: ButtonStyle(
// //                       backgroundColor: MaterialStateProperty.all<Color>(
// //                         Color(0xFFED1A34),),
// //                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
// //                           RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(25.0)
// //                           )
// //
// //                       ),
// //                     ),
// //                     child: Text("Giriş",
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 17,
// //
// //                       ),
// //                     ),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           ),
// //         ));
// //
// //     // }
// //     // buildFirstNameField() {
// //     //   return TextFormField(
// //     //     decoration: InputDecoration(labelText:"Öğrenci Adı",hintText: "Arif"),
// //     //   );
// //     // }
// //
// //
// //     // buildDateField() {
// //     //   return TextFormField(
// //     //     decoration: InputDecoration(labelText:"Öğrenci Soyadı",hintText: "Kalaycı"),
// //     //     onSaved: (String? value){
// //     //   }
// //     //   );
// //     // }
// //     //
// //   }
// // }
// //
//
//
// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:get_mysql_data/page1.dart';
//
// import 'main.dart';
// import 'package:flutter/material.dart';
// import 'package:get_mysql_data/date.dart';
// import 'package:get_mysql_data/main.dart';
// import 'package:http/http.dart' as http;
//
//
// class page2 extends StatefulWidget {
//   @override
//   State<page2> createState() => _page2State();
// }
//
// class _page2State extends State<page2> {
//   String? date;
//   TextEditingController d = TextEditingController();
//   Future ileri() async {
//     final response = await http.post(
//         Uri.parse("http://10.0.2.2/login/register.php"), body: {
//       "date": d.text,
//     });
//     var datauser = json.decode(response.body);
//     if (datauser[0]['level'] == 'admin') {
//       //Navigator.restorablePushReplacementNamed(context, '/page1');
//       print("başarılı");
//     }
//     else {
//       print("başarısız");
//     }
//     setState(() {
//       date=datauser[0]['date'];
//     });
//     return datauser[0];
//   }
//   DateTime? _dateTime;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: ListView(
//           shrinkWrap: true,
//           reverse: true,
//           children: [
//             SizedBox(
//               height: 170,
//             ),
//             Center(
//               child: Container(
//                 child: CircleAvatar(
//                   backgroundColor: Colors.grey[200],
//                   radius: 40.0,
//                   child: Icon(
//                     Icons.person_outline,
//                     color: Color(0xFFED1A34),
//                     size: 50,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               child: Column(
//                 children: [
//                   Text(
//                     "Hoşgeldin",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontFamily: "Merriweather",
//                         fontWeight: FontWeight.w500,
//                         fontSize: 35),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Yunus Emre",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontFamily: "Merriweather",
//                         fontWeight: FontWeight.w500,
//                         fontSize: 30),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 70,
//             ),
//
//             Column(
//               children: [
//                 Text(_dateTime == null ? 'Herhangi Bir Tarih Seçilmedi' : _dateTime.toString()),
//                 ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFED1A34),),
//                       shape:MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                             borderRadius:BorderRadius.circular(25.0)
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       showDatePicker(
//                           context: context,
//                           initialDate: DateTime.now(),
//                           firstDate: DateTime(2001),
//                           lastDate: DateTime.now()).then((datee){
//                         setState(() {
//                           _dateTime=datee;
//                         });
//                       });
//                     },
//                     child: Text("Bir tarih seçin")),
//               ],
//             ),
//
//
//             SizedBox(height: 50,),
//             Padding(
//               padding: const EdgeInsets.only(left: 100, right: 100),
//               child: Container(
//                   width: 90,
//                   height: 50,
//                   child: ElevatedButton(
//                     onPressed: () async{
//                       final response = await http.post(
//                           Uri.parse("http://10.0.2.2/login/login2.php"), body: {
//                         "date": d.text,
//                       });
//                       var datauser = json.decode(response.body);
//
//                       if (datauser[0]['level'] == 'admin') {
//                         Navigator.restorablePushReplacementNamed(context, '/page1');
//                         print("başarılı");
//                       }
//                       else {
//                         print("başarısız");
//                       }
//                       setState(() {
//                         date=datauser[0]['date'];
//                       });
//                       return datauser[0];
//                     },
//                     child: Text(
//                       "Devam Et",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 17,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                         Color(0xFFED1A34),
//                       ),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25.0))),
//                     ),
//                   )),
//             ),
//             //Text(date),
//             SizedBox(height: 130),
//             Column(
//               children: [
//                 Container(
//                   width: double.maxFinite,
//                   height: 70,
//                   decoration: BoxDecoration(color: Color(0xFFED1A34)),
//                   child: Center(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 130),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.directions_railway,
//                             size: 30,
//                             color: Colors.white,
//                           ),
//                           Text(
//                             "SAMULAŞ",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ].reversed.toList(),
//         ),
//       ),
//     );
//
//     // }
//     // buildFirstNameField() {
//     //   return TextFormField(
//     //     decoration: InputDecoration(labelText:"Öğrenci Adı",hintText: "Arif"),
//     //   );
//     // }
//
//
//     // buildDateField() {
//     //   return TextFormField(
//     //     decoration: InputDecoration(labelText:"Öğrenci Soyadı",hintText: "Kalaycı"),
//     //     onSaved: (String? value){
//     //   }
//     //   );
//     // }
//     //
//   }
// }
//

import 'dart:convert';
import 'package:get_mysql_data/page1.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'package:get_mysql_data/date.dart';
import 'package:get_mysql_data/main.dart';
import 'package:http/http.dart' as http;


class page2 extends StatelessWidget {
  String? date;
  TextEditingController d = TextEditingController();

  Future ileri() async {
    final response = await http.post(
        Uri.parse("http://10.0.2.2/login/login2.php"), body: {
      "date": d.text,
    });
    var datauser = json.decode(response.body);

    if (datauser[0]['level'] == 'admin') {
      //Navigator.restorablePushReplacementNamed(context, '/page1');
      print("başarılı");
    }
    else {
      print("başarısız");
    }
    return datauser[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      border: Border.all(color: Color(0xFFED1A34)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      border: Border.all(color: Color(0xFFED1A34)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextField(
                        controller: d,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tarih ", hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(onPressed: () async {
                    final response = await http.post(
                        Uri.parse("http://10.0.2.2/login/login2.php"), body: {
                      "date": d.text,

                    });
                    var datauser = json.decode(response.body);

                    if (datauser[0]['level'] == 'admin') {
                      Navigator.restorablePushReplacementNamed(context, '/page1');
                      print("başarılı");
                    }
                    else {
                      print("başarısız");
                    }
                    return datauser[0];
                  },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFED1A34),),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)
                          )

                      ),
                    ),
                    child: Text("Giriş",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,

                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));

    // }
    // buildFirstNameField() {
    //   return TextFormField(
    //     decoration: InputDecoration(labelText:"Öğrenci Adı",hintText: "Arif"),
    //   );
    // }


    // buildDateField() {
    //   return TextFormField(
    //     decoration: InputDecoration(labelText:"Öğrenci Soyadı",hintText: "Kalaycı"),
    //     onSaved: (String? value){
    //   }
    //   );
    // }
    //
  }
}

