import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          
          "Sawa Exchange",
          style: TextStyle(
            color: Color(0xFF707070),
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Column(
      //     children: <Widget>[
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: <Widget>[
      //           Text("Sign In"),
      //           SizedBox(height: 10),
      //           Container(
      //             margin: EdgeInsets.only(bottom: 10),
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius:  BorderRadius.circular(15),
      //             ),
      //             child: TextField(
      //               decoration: InputDecoration(
      //                 contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      //                 border: InputBorder.none,
      //                 hintText: 'Email'
      //               ),
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.only(bottom: 10),
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius:  BorderRadius.circular(15),
      //             ),
      //             child: TextField(
      //               decoration: InputDecoration(
      //                 contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      //                 border: InputBorder.none,
      //                 hintText: 'Password'
      //               ),
      //             ),
      //           ),
      //           SizedBox(height: 15),
      //           SizedBox(
      //             width: MediaQuery.of(context).size.width,
      //             height: 45,
      //             child: RaisedButton(
      //               onPressed: (){},
      //               color: Colors.black,
      //               textColor: Colors.white,
      //               child: Text(
      //                 "Sign In",
      //                 style: TextStyle(
      //                   // color: Colors.white,
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.w600,
      //                 )
      //               ),
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: new BorderRadius.circular(15.0),
      //                 // side: BorderSide(color: Colors.black),
      //               )
      //             ),
      //           ),
              
      //         ]
      //       ),
      //       Column(
      //         children: <Widget>[
                
      //         ]
      //       ),
      //     ]
      //   ),
      // ),
    );
  }
}