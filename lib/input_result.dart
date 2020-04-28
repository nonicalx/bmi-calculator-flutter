import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseableCard.dart';
import 'bottomButtom.dart';

class InputResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text("Your Result"),
            Expanded(
              child: ReuseableCard(
                  content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Expanded(
                        child: Text(
                      'NORMAL',
                      style: TextStyle(color: Colors.green),
                    )),
                    Expanded(child: Text('19.2', style: kNumberTxtStyle)),
                    Expanded(child: Text('You are dieing already man!!!!!!'))
                  ])),
            ),
            BottomButton(
              title: "Re-Calculate",
            )
          ],
        ),
      ),
    );
  }
}
