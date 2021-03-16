import 'package:flutter/material.dart';

class AlternateAuthSelectorButton extends StatelessWidget {
  final String text1, text2;
  final Function onTap;

  AlternateAuthSelectorButton({this.onTap, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    final whiteColor = Theme.of(context).accentColor;
    return Column(
      children: [
        Divider(
          color: whiteColor.withOpacity(0.5),
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                Size(double.infinity, 0),
              ),
              overlayColor: MaterialStateProperty.all<Color>(
                Colors.transparent,
              ),
            ),
            onPressed: onTap,
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontFamily: 'Montserrat'),
                children: [
                  TextSpan(
                    text: text1,
                    style: TextStyle(
                      color: whiteColor.withOpacity(0.5),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: text2,
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
