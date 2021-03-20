import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hassan/start.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Create Your Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Times New Roman'),
              ),
              Icon(
                Icons.more_horiz_sharp,
                color: Colors.blueGrey,
                size: 70.0,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "What is",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Times New Roman'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "YOUR HEIGHT ?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration:
                  new InputDecoration(labelText: "Enter Your Height in CM"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "YOUR Weight ?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration:
                  new InputDecoration(labelText: "Enter Your Height in KG"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => start()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.green,
                    size: 50.0,
                  ))),
        ],
      ),
    );
  }
}
