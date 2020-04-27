import 'package:flutter/material.dart';
import 'reuseableCard.dart';
import 'bottomButtom.dart';
import 'genderSign.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const activeColor = 0xFF1D1E33;
const inActiveColor = 0xFF111328;

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender selectGender;

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
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    color: selectGender == Gender.male
                        ? activeColor
                        : inActiveColor,
                    content: GenderSign(
                      color:
                          selectGender == Gender.male ? 0xFFFFFFFF : 0xFF8D8E98,
                      gender: 'male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    color: selectGender == Gender.female
                        ? activeColor
                        : inActiveColor,
                    content: GenderSign(
                      color: selectGender == Gender.female
                          ? 0xFFFFFFFF
                          : 0xFF8D8E98,
                      gender: 'female',
                    ),
                  ),
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
            BottomButton()
          ],
        ));
  }
}
