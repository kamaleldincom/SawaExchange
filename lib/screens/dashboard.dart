import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Sawa Exchange"),

        leading: Container(
          padding: EdgeInsets.all(8),
          
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(
                context, '/profile',
                // arguments: widget.usertype
              );
            },
              child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("AK"),
              // radius: 10.0,
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: (){
            Navigator.pushNamed(
                context, '/newpost',
                // arguments: widget.usertype
              );
          })
        ],
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}