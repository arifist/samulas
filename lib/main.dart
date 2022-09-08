// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get_mysql_data/page1.dart';
// import 'package:get_mysql_data/page2.dart';
// import 'package:http/http.dart' as http;
//
// void main(){
//   runApp(LoginApp());
// }
// String? userName;
// String? tc;
// String? passWord;
// String? date;
// class LoginApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: LoginPage(),
//         routes: <String,WidgetBuilder>{
//           '/page1':(BuildContext context)=>page1(),
//           // '/page2':(BuildContext context)=>page2(),
//           '/LoginPage':(BuildContext context)=>LoginPage(),
//         }
//     );
//   }
//
// }
//
// class LoginPage extends StatefulWidget{
//   @override
//   _LoginPageState createState()=>_LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage>{
//
//   TextEditingController user=TextEditingController();
//   TextEditingController pass= TextEditingController();
//   TextEditingController t=TextEditingController();
//   TextEditingController d=TextEditingController();
//
//   Future login() async {
//     final response = await http.post(
//         Uri.parse("http://10.0.2.2/login/login.php"), body: {
//       "username": user.text,
//       "password": pass.text,
//       "tc":t.text,
//       "date":d.text,
//     });
//
//     var datauser = json.decode(response.body);
//     Fluttertoast.showToast(
//         msg: "Login Failed!",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0
//     );
//
//     if (datauser[0]['level'] == 'admin') {
//       Fluttertoast.showToast(
//           msg: "Login Succesful!",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.green,
//           textColor: Colors.white,
//           fontSize: 16.0
//       );
//       Navigator.restorablePushReplacementNamed(context, '/page1');
//     }
//
//     else if (datauser[0]['level'] == 'member') {
//       Navigator.restorablePushReplacementNamed(context, '/page2');
//     }
//
//     setState(() {
//       userName=datauser[0]['username'];
//     });
//     setState(() {
//       passWord=datauser[0]['password'];
//     });
//     setState(() {
//       tc=datauser[0]['tc'];
//     });
//     setState(() {
//       date=datauser[0]['date'];
//     });
//     return datauser[0];
//
//   }
//
//
//   // @override
//   // Widget build(BuildContext context){
//   //   return Scaffold(
//   //       appBar: AppBar(title: Text('Login'),),
//   //       body:Column(
//   //         children: <Widget>[
//   //           TextField(
//   //             controller: user,
//   //             decoration: InputDecoration(
//   //               icon: Icon(Icons.mail_outline),
//   //               hintText: 'Kullanıcı adı',
//   //             ),
//   //           ),
//   //           TextField(
//   //             controller: t,
//   //             obscureText: true,
//   //             decoration: InputDecoration(
//   //               icon: Icon(Icons.vpn_key),
//   //               hintText: 'tc',
//   //             ),
//   //           ),
//   //           ElevatedButton(
//   //             //color:Colors.blue,
//   //             child: Text('Giriş'),
//   //             onPressed: (){
//   //               //login();
//   //               login();
//   //               //  Navigator.pop(context);
//   //             },
//   //
//   //           ),
//   //         ],
//   //       )
//   //   );
//   // }
//
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Center(
//             child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset("images/logoyeni-1.png"),
//                 SizedBox(height: 50.0,),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal:  25.0),
//                   child: Container(
//                     width: 300,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 230, 230, 230),
//                       border: Border.all(color: Color(0xFFED1A34)),
//                       borderRadius: BorderRadius.circular(25.0),
//                     ),
//
//                     child: Padding(
//                       padding:const EdgeInsets.only(left: 10.0) ,
//                       child: TextField(
//                         controller:user,
//                         textAlign: TextAlign.center,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "Ad Soyad",hintStyle:TextStyle(
//                           color: Colors.white,
//                           fontWeight:FontWeight.bold,
//                           fontSize:17,
//                         ),
//
//
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 25,),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal:  25.0),
//                   child: Container(
//                     width: 300,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 230, 230, 230),
//                       border: Border.all(color: Color(0xFFED1A34)),
//                       borderRadius: BorderRadius.circular(25.0),
//                     ),
//
//                     child: Padding(
//                       padding:const EdgeInsets.only(left: 10.0) ,
//                       child: TextField(
//                         controller: t,
//                         textAlign: TextAlign.center,
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "T.C. Kimlik No ",hintStyle: TextStyle(
//                           color:Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17,
//                         ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height:50),
//                 Container(
//                   width: 120,
//                   height: 50,
//                   child: ElevatedButton(onPressed:(){
//                     login();
//                   },
//                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFED1A34),),
//                       shape:MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                               borderRadius:BorderRadius.circular(25.0)
//                           )
//
//                       ),
//                     ),
//                     child:Text("Giriş",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
//
// }



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_mysql_data/page1.dart';
import 'package:get_mysql_data/page2.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(LoginApp());
}
String? userName;
String? tc;
String? passWord;
String? date;
String? tur1_saat;
String? tur1_tren;
String? tur1_harf;
String? tur2_saat;
String? tur2_tren;
String? tur2_harf;
String? tur3_saat;
String? tur3_tren;
String? tur3_harf;
class LoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: <String,WidgetBuilder>{
          '/page1':(BuildContext context)=>page1(),
          '/page2':(BuildContext context)=>page2(),
          '/LoginPage':(BuildContext context)=>LoginPage(),
        }
    );
  }

}

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=>_LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  TextEditingController user=TextEditingController();
  TextEditingController pass= TextEditingController();
  TextEditingController t=TextEditingController();
  TextEditingController d=TextEditingController();
  TextEditingController h=TextEditingController();
  TextEditingController t1_s=TextEditingController();
  TextEditingController t1_t=TextEditingController();
  TextEditingController t1_h=TextEditingController();
  TextEditingController t2_s=TextEditingController();
  TextEditingController t2_t=TextEditingController();
  TextEditingController t2_h=TextEditingController();
  TextEditingController t3_s=TextEditingController();
  TextEditingController t3_t=TextEditingController();
  TextEditingController t3_h=TextEditingController();

  Future<List?> login() async {
    final response = await http.post(
        Uri.parse("http://10.0.2.2/login/deneme.php"), body: {
      "username": user.text,
      "password": pass.text,
      "tc":t.text,
      "date":d.text,
      "tur1_saat":t1_s.text,
      "tur1_tren":t1_t.text,
      "tur1_harf":t1_h.text,
      "tur2_saat":t2_s.text,
      "tur2_tren":t2_t.text,
      "tur2_harf":t2_h.text,
      "tur3_saat":t3_s.text,
      "tur3_tren":t3_t.text,
      "tur3_harf":t3_h.text,

    });

    var datauser = json.decode(response.body);
    Fluttertoast.showToast(
        msg: "Login Failed!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

    if (datauser[0]['level'] == 'admin') {
      Fluttertoast.showToast(
          msg: "Login Succesful!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      Navigator.restorablePushReplacementNamed(context, '/page2');
    }


    setState(() {
      userName=datauser[0]['username'];
    });
    setState(() {
      passWord=datauser[0]['password'];
    });
    setState(() {
      tc=datauser[0]['tc'];
    });
    setState(() {
      date=datauser[0]['date'];
    });
    setState(() {
      tur1_saat=datauser[0]['tur1_saat'];
    });

    setState(() {
      tur1_tren=datauser[0]['tur1_tren'];
    });

    setState(() {
      tur1_harf=datauser[0]['tur1_harf'];
    });
    setState(() {
      tur2_saat=datauser[0]['tur2_saat'];
    });

    setState(() {
      tur2_tren=datauser[0]['tur2_tren'];
    });

    setState(() {
      tur2_harf=datauser[0]['tur2_harf'];
    });
    setState(() {
      tur3_saat=datauser[0]['tur3_saat'];
    });

    setState(() {
      tur3_tren=datauser[0]['tur3_tren'];
    });

    setState(() {
      tur3_harf=datauser[0]['tur3_harf'];
    });

    return datauser[0];

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/logoyeni-1.png"),
                SizedBox(height: 50.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:  25.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      border: Border.all(color: Color(0xFFED1A34)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),

                    child: Padding(
                      padding:const EdgeInsets.only(left: 10.0) ,
                      child: TextField(
                        controller:user,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ad Soyad",hintStyle:TextStyle(
                          color: Colors.white,
                          fontWeight:FontWeight.bold,
                          fontSize:17,
                        ),


                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:  25.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      border: Border.all(color: Color(0xFFED1A34)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),

                    child: Padding(
                      padding:const EdgeInsets.only(left: 10.0) ,
                      child: TextField(
                        controller: t,
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "T.C. Kimlik No ",hintStyle: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:50),
                Container(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(onPressed:(){
                    login();
                  },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFED1A34),),
                      shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(25.0)
                          )

                      ),
                    ),
                    child:Text("Giriş",
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
  }
}