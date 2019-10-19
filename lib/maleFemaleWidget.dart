import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);
const iconSize = 80.0;

class MaleFemaleWidget extends StatelessWidget {
  MaleFemaleWidget({@required this.text, @required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: labelStyle,
        )
      ],
    );
  }
}