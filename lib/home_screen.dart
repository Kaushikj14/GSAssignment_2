import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.ac_unit), Icon(Icons.e_mobiledata)],
      ),
    );
  }
}
