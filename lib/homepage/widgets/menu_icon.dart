import 'package:flutter/material.dart';
class menuIcon extends StatelessWidget {
  final IconData icon;
  menuIcon({
    this.icon
});
  @override
  Widget build(BuildContext context) {
    return Icon(icon);
  }
}
