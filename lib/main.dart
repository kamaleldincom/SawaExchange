import 'package:flutter/material.dart';
import 'package:sawa_exchange/screens/Profile.dart';
import 'package:sawa_exchange/screens/dashboard.dart';
import 'package:sawa_exchange/screens/login.dart';
import 'package:sawa_exchange/screens/newpost.dart';

import 'screens/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      routes: {
        '/dashboord': (context) => Dashboard(),
        '/login': (context) => Login(),
        '/profile': (context) => Profile(),
        '/newpost': (context) => NewPost(),
      },
    );
  }
}
