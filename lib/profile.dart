import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xffe0e0e0),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              // for curve
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 20,
            child: Column(
              children: [
                Text(
                  "Charlotte Summer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Flutter Software Developer"),
              ],
            ),
          ),
          Positioned(
            top: 330,
            left: 23,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Us",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 320.0,
                  child: Text(
                    "A Flutter developer is a software engineer who uses the Flutter framework to develop mobile, web, and desktop applications. Flutter developers are also fluent in writing code using the Dart programming language",
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Color(0xff123456),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.menu_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.more_horiz,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 180,
            left: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'images/unnamed.jpg',
                // scale: 10.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
