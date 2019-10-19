import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text('Your Result',
                style: kNumbersStyle,),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('OVERWEIGHT', style: kLargeButtonTextStyle.copyWith(
                      color: Colors.greenAccent,
                    ),),
                    Text('26.7', style: kNumbersStyle,),
                    Text('You hasj  asdfsdfkaljs dfaksl jdfasj dfklajkldfja; sdfas ;dfjlkas jfas kdjfjsaj j.', style: kLabelStyle,)

                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 15),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kLargeButtonTextStyle,
                  ),
                ),
              ),
            ),
          ],
        )
      ,
    );
  }
}
