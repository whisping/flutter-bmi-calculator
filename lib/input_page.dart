import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'maleFemaleWidget.dart';
import 'reusableCard.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

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
                    onPress: (){
                      setState(() {
                        maleCardColor = kActiveCardColor;
                        femaleCardColor = kInactiveCardColor;
                      });
                    },
                    colour: maleCardColor,
                    cardChild: MaleFemaleWidget(
                        text: 'MALE',
                        icon: FontAwesomeIcons.mars
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        maleCardColor = kInactiveCardColor;
                        femaleCardColor = kActiveCardColor;
                      });
                    },
                    colour: femaleCardColor,
                    cardChild: MaleFemaleWidget(
                        text: 'FEMALE',
                        icon: FontAwesomeIcons.venus
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              children: <Widget>[
                Text('HEIGHT', style: kLabelStyle,),
                Slider(
                  value: 0,
                  onChanged: null,
                  min: 0,
                  max: 10,
                  divisions: 5,
          ),
              ],
            ),),),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor,),
                ),
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor,),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}


