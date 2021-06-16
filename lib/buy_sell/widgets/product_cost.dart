import 'package:flutter/material.dart';

class cost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Text(
      '₹ 230',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.green[400],
      ),
    );
  }
}
