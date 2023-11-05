import 'package:assignment2/nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: Nav(),
    );
  }
}
