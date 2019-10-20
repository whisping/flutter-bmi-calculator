import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text('Your Result',
                style: kNumbersStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('OVERWEIGHT', style: kLargeButtonTextStyle.copyWith(
                      color: Colors.greenAccent,
                    ),),
                    Text('26.7', style: kNumbersStyle.copyWith(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(
                      'You hasj  jhg kn jbjbjhb kjb k bblxckzkjv nxknvklznkxc v x kvjzx v vz xklc zxc',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(name: 'RE-CALCULATE', onTap: () {
              Navigator.pop(context);
            }),
          ],
        )
      ,
    );
  }
}

