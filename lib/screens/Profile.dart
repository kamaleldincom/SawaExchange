import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          
          "Profile",
          style: TextStyle(
            color: Color(0xFF707070),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              showModalBottomSheet(
                context: context, 
                builder: (BuildContext bc){
                  return Container(
                    height: MediaQuery.of(context).size.height/5,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            "Settings",
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
                              onPressed: (){
                                showModalBottomSheet(
                                  context: context, 
                                  // isScrollControlled: true,
                                  builder: (BuildContext bc){
                                    return Container(
                                      // height: MediaQuery.of(context).size.height/2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15.0),
                                            child: Text(
                                              "Terms & Conditions",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              )
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                            child: Expanded(
                                              child: Text("These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns.These Guidelines clarify the ways you can and cannot use the WhatsApp Brand Resources for marketing and other purposes. These Guidelines also contain legal disclosures and a general set of questions and answers that address common inquiries and concerns."),
                                            ),
                                          )
                                        ]
                                      ),
                                    );
                                  }
                                );
                              },
                              color: Colors.white,
                              textColor: Colors.blueAccent,
                              child: Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                )
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.blueAccent),
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
                              onPressed: (){
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  // context, 
                                  '/login',
                                  (Route<dynamic> route) => false
                                  // arguments: widget.usertype
                                );
                              },
                              color: Colors.redAccent,
                              textColor: Colors.white,
                              child: Text(
                                "Log Out",
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
              
                      ]
                    ),
                  );
                }
              );
              
            },
            icon: Icon(
              Icons.settings, 
              // color: Colors.white,
            ), 
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundColor: Color(0xFF707070),
              child: Text("AK"),
              radius: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Name",
                      style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                    // SizedBox(width: 80),
                    Text(
                      "Ahmed Kamal",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                    // Text("edit"),
                  ]
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Phone No.",
                      style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                    // SizedBox(width: 80),
                    Text(
                      "+60111345789",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                    // Text("edit"),
                  ]
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "WhatsApp No.",
                      style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                    // SizedBox(width: 80),
                    Text(
                      "+24991929399",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                    // Text("edit"),
                  ]
                ),
              ]
            ),
          ),
          Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Exchange Posts",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(
                context, '/newpost',
                // arguments: widget.usertype
              );
                },
                child: Container(
                  // width: 110,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF707070),
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
                        "New Post",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        )
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            scrollDirection: Axis.vertical,
            // itemExtent: 100.0,
            shrinkWrap: true,
            itemCount: 3,
            
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
                          "by Me",
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
                            Row(
                              children: [
                                GestureDetector(
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
                                SizedBox(width: 5),
                                GestureDetector(
                                  onTap: (){
                                    showModalBottomSheet(
                                      context: context, 
                                      builder: (BuildContext bc){
                                        return Container(
                                          height: MediaQuery.of(context).size.height/5,
                                          child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 15.0),
                                                child: Text(
                                                  "Post Actions",
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
                                                    color: Colors.redAccent,
                                                    textColor: Colors.white,
                                                    child: Text(
                                                      "Delete Post",
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

                                            ]
                                          ),
                                        );
                                      }
                                    );
                                  },
                                  child: Container(
                                    // width: 40,
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

                                        Icon(
                                          Icons.more_vert,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  )
                                ),
                          
                              ],
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