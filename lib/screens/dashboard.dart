import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String currencyValue = 'US Dollars';
  String amountValue = 'All amounts';
  String payIn = 'Malaysia';
  String collectFrom = 'Sudan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Image.asset(
            "assets/Logo.png", fit: BoxFit.contain,
          )
        ),
        // Center(
        //   child: Text(
            
        //     "Sawa Exchange",
        //     style: TextStyle(
        //       color: Color(0xFF707070),
        //     ),
        //   ),

        // ),

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
              backgroundColor: Colors.black,
              child: Text("AK"),
              // radius: 10.0,
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              onTap: (){
              Navigator.pushNamed(
                context, '/newpost',
                // arguments: widget.usertype
              );
            },
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  
                  icon: Icon(Icons.add, color: Colors.white,), 
                ),
              ),
            ),
          )
        ],
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    body: Column(
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
                  // Text(
                  //   "Sudan",
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 19,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
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
              Container(
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        // width: 110,
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200],
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 3.0,
                            ),
                          ],
                        ),

                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: currencyValue,
                            icon: Icon(Icons.arrow_drop_down),
                            style: TextStyle(color: Colors.grey),
                            items: <String>['US Dollars', 'Sudan Pounds', 'M\'asian Ringgits', 'Yemeni Rials']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String newCurrency) {
                              setState(() {
                                currencyValue = newCurrency;
                              });
                            },

                          ),
                        ),
                      )
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Container(
                        // width: 110,
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200],
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 3.0,
                            ),
                          ],
                        ),

                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: amountValue,
                            icon: Icon(Icons.arrow_drop_down),
                            style: TextStyle(color: Colors.grey),
                            items: <String>['All amounts', '< 500', '500 - 1000', '> 1000']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String newAmount) {
                              setState(() {
                                amountValue = newAmount;
                              });
                            },

                          ),
                        ),
                      )
                    ),
                  ]
                ),
              ),
              Container(
                // padding: EdgeInsets.all(8),
                child: GestureDetector(
                //   onTap: (){
                //   Navigator.pushNamed(
                //     context, '/newpost',
                //     // arguments: widget.usertype
                //   );
                // },
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      icon: Icon(
                        Icons.filter_list_alt,
                        color: Colors.white,
                      ), 
                    ),
                  ),
                ),
              )
            ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            
            "All Results",
            style: TextStyle(
              color: Colors.grey
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            scrollDirection: Axis.vertical,
            // itemExtent: 100.0,
            shrinkWrap: true,
            itemCount: 5,
            
            itemBuilder: (context, index) {
              return Container( 
                width: MediaQuery.of(context).size.width,
                // height: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 15),
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
                // color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                      children: [
                        Column(
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
                          Text(
                            "Malaysia",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                        ),
                        Container(
                          // height: 30,
                          child: IconButton(
                            icon: Icon(Icons.arrow_right, color: Colors.black, size: 40,), 
                          ),
                        ),
                        Column(
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
                          Text(
                            "Sudan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                        ),
                      ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Posted at 20/11/2020",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "by Basil Omar",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                      ),
                    ],
                    ),
                    // SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Note:",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Collection in Sudan via mBOK app",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                    ),
                    SizedBox(height: 15),
                    Row(
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width-50,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE3E3E3),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                
                                Text(
                                  '\$200',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'USD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: (){
                                showModalBottomSheet(
                                  context: context, 
                                  builder: (BuildContext bc){
                                    return Container(
                                      height: MediaQuery.of(context).size.height/4,
                                      // decoration: BoxDecoration(
                                      //   color: Colors.white,
                                      //   borderRadius: BorderRadius.all(Radius.circular(15)),
                                      //   boxShadow: [
                                      //     BoxShadow(
                                      //       color: Colors.grey[200],
                                      //       offset: Offset(0.0, 1.0), //(x,y)
                                      //       blurRadius: 3.0,
                                      //     ),
                                      //   ],
                                      // ),
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15.0),
                                            child: Text(
                                              "Contact Basil Omar",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              )
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              height: 45,
                                              child: RaisedButton(
                                                onPressed: (){},
                                                color: Colors.black,
                                                textColor: Colors.white,
                                                child: Text(
                                                  "Call mobile number",
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
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              height: 45,
                                              child: RaisedButton(
                                                onPressed: (){},
                                                color: Color(0xFF25D366),
                                                textColor: Colors.white,
                                                child: Text(
                                                  "Contact on WhatsApp",
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
                                    );
                                  }
                                );
                              },
                              child: Container(
                                // width: 110,
                                height: 30,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.black,
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
                                      "Contact",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      )
                                    ),
                                    // Icon(
                                    //   Icons.arrow_drop_down,
                                    //   color: Colors.grey,
                                    // ),
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                    ),
                    ]
                ),
              );
            },
          ),
        )
      
      ]
    ),
    );
  }
}