import 'package:flutter/material.dart';
class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.network(
        'https://api.time.com/wp-content/uploads/2019/11/top-10-fiction-2019.jpg',
        height: 250,
        width: 500,
      ),
    );
  }
}
