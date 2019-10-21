import 'package:flutter/material.dart';
import '../constants.dart';

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
          style: kLabelStyle,
        )
      ],
    );
  }
}
