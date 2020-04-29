import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseableCard.dart';
import 'bottomButtom.dart';
import 'calculator.dart';

Map result;

class InputResult extends StatelessWidget {
  final int height;
  final int weight;

  InputResult({this.height, this.weight}) {
    Calculator newBMI =
        new Calculator(height: this.height, weight: this.weight);
    result = newBMI.getResult();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text("Your Result",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ReuseableCard(
                content: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  Text(
                    result['status'],
                    style:
                        TextStyle(color: Color(result['color']), fontSize: 22),
                  ),
                  Text(result['value'],
                      style: TextStyle(
                          fontSize: 100, fontWeight: FontWeight.bold)),
                  Text(
                    result['comment'],
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center,
                  )
                ])),
          ),
          BottomButton(
            title: "RE-CALCULATE",
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
