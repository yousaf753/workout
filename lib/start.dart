import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class start extends StatefulWidget {
  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  double _currentSliderValue = 20;
  String dropdownValue = 'Weight';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Text(
                "February",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Times New Roman'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 75.0,
                      height: 75.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/Workout_Plan_Women.png')))),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "MY GOAL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Weight',
                      'Height',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  )
                ]),
          ),
          Text(
            "This Week",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Times New Roman'),
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/image1.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/image2.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/image3.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/image4.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 2,
                  ),
                ],
              )),
          Text(
            "COMBINE ROUTINE",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Times New Roman'),
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/image1.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/image2.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/image3.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/image4.png'),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'WALKING LUNGES',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Times New Roman'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
