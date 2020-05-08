import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
                        boxShadow: <BoxShadow>[],
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
