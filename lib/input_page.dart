import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'maleFemaleWidget.dart';
import 'reusableCard.dart';

const bottomContainerHeight = 80.0;
const basicWidgetColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: basicWidgetColor,
                    cardChild: MaleFemaleWidget(
                        text: 'MALE',
                        icon: FontAwesomeIcons.mars
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: basicWidgetColor,
                    cardChild: MaleFemaleWidget(
                        text: 'FEMALE',
                        icon: FontAwesomeIcons.venus
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: basicWidgetColor,),),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: basicWidgetColor,),
                ),
                Expanded(
                  child: ReusableCard(colour: basicWidgetColor,),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}


