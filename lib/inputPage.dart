import 'package:flutter/material.dart';
import 'reuseableCard.dart';
import 'bottomButtom.dart';
import 'genderSign.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;

  // var height = 150;
  int height = 150;
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
                        ? kActiveColor
                        : kInActiveColor,
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
                        ? kActiveColor
                        : kInActiveColor,
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
              child: ReuseableCard(
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTxtStyle,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text("$height", style: kNumberTxtStyle),
                          Text('cm', style: kLabelTxtStyle)
                        ]),
                    Slider(
                      value: height.toDouble(),
                      min: kMinHeight,
                      max: kMaxHeight,
                      activeColor: Color(kActiveSlideColor),
                      inactiveColor: Color(kInActiveSlideColor),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    )
                  ],
                ),
              ),
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
