import 'package:flutter/material.dart';

import 'home_page.dart';

// ignore: camel_case_types
class Main_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/main.png"),
            Text(
              " Excellent !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Times New Roman'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " Your Work !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " You finished your routine ,",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Times New Roman'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " How do you feel ?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Times New Roman'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " The next time will be easier !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Times New Roman'),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              " Share Your Experience",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Times New Roman'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              //mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/twitter.png')))),
                SizedBox(
                  width: 50,
                ),
                Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/linkedin.png')))),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    " Go to home ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
