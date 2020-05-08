import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 30.0),
                    child: Text(
                      "Hello, Raghav!",
                      style: TextStyle(
                        color: Color(0xFF537C61),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 27, right: 30.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9.5),
                      child: Image.asset(
                        'images/pikachu.png',
                        height: 40,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF98DBAF),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 30,
                            spreadRadius: -10,
                            color: Color(0xFF98DBAF),
                            offset: Offset(0, 25),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 70 / 2,
                      left: 20,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 80,
                            child: Image.asset(
                              'images/fruits/harvest.png',
                              scale: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFB7E6C7),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'We picked up a new\nportion of fresh fruits\nfor you!',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 200,
                      child: GestureDetector(
                        onTap: () {
                          print('2nd Layer Button Tapped');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                          child: Container(
                            height: 40,
                            width: 150,
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFCDEED8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Week's betsellers",
                    style: TextStyle(
                      color: Color(0xFF547D62),
                      fontSize: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF98DBAF),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
