import 'package:flutter/material.dart';
import 'reuseableCard.dart';

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
              child: Row(children: <Widget>[
                Expanded(
                  child: ReuseableCard(),
                ),
                Expanded(
                  child: ReuseableCard(),
                ),
              ]),
            ),
            Expanded(
              child: ReuseableCard(),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReuseableCard(),
                ),
                Expanded(
                  child: ReuseableCard(),
                ),
              ]),
            ),
          ],
        ));
  }
}
