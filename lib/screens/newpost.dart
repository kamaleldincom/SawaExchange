import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  String payIn = 'Malaysia';
  String collectFrom = 'Sudan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          
          "New Post",
          style: TextStyle(
            color: Color(0xFF707070),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.fromLTRB(15, 30, 15, 15),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFE3E3E3),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pay in",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isDense: true,
                      // itemHeight: 48,
                      value: payIn,
                      icon: Icon(Icons.arrow_drop_down),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                      items: <String>['Sudan', 'Malaysia', 'Yemen']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String newPayInLocation) {
                        setState(() {
                          payIn = newPayInLocation;
                        });
                      },
                    ),
                  ),
                
                  ],
                  ),
                ),
                Container(
                  // height: 10,
                  // padding: EdgeInsets.all(20),
                  child: IconButton(
                    icon: Icon(Icons.swap_horizontal_circle_rounded, color: Colors.black, size: 25,),
                    // iconSize: 15,
                  ),
                ),
                Container(
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                      "Collect from",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isDense: true,
                      // itemHeight: 48,
                      value: collectFrom,
                      icon: Icon(Icons.arrow_drop_down),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                      items: <String>['Sudan', 'Malaysia', 'Yemen']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String newColLocation) {
                        setState(() {
                          collectFrom = newColLocation;
                        });
                      },
                    ),
                  ),
                  
                  ],
                  ),
                ),
              ],
              ),
              
          ),
            Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    // width: 110,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // border: Border.all(
                      //   width: 0.5,
                      // ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 3.0,
                        ),
                      ],
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "US Dollars",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey[800],
                        ),
                      ],
                    ),
                  )
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  child: Container(
                    // width: 110,
                    height: 40,
                    padding: EdgeInsets.fromLTRB(10, 1, 1, 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // border: Border.all(
                      //   width: 0.5,
                      // ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 3.0,
                        ),
                      ],
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Amount",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        // Icon(
                        //   Icons.arrow_drop_down,
                        //   color: Colors.grey,
                        // ),
                        SizedBox(width: 10,),
                        Container(
                          width: 120,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                  color: Colors.amber,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintText: 'eg. 200'
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                
              ]
            ),
          ),
            Container(
              // height: 120,
              width: MediaQuery.of(context).size.width,
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 3.0,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Add a Note",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                  ),
                  Container(
                    // height: 100,
                    child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.amber,
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: 'eg. Collection in Sudan via mBOK app'
                      ),
                    ),
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Post Exchange Offer",
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    // side: BorderSide(color: Colors.black),
                  )
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}