import 'package:flutter/material.dart';
import 'package:sawa_exchange/screens/Profile.dart';
import 'package:sawa_exchange/screens/dashboard.dart';
import 'package:sawa_exchange/screens/login.dart';
import 'package:sawa_exchange/screens/newpost.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light
      ),
      home: Dashboard(),
      routes: {
        '/dashboord': (context) => Dashboard(),
        '/login': (context) => Login(),
        '/profile':(context) => Profile(),
        '/newpost': (context) => NewPost(),
      },
    );
  }
}
