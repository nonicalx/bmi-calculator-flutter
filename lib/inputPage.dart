import 'package:flutter/material.dart';
import 'reuseableCard.dart';
import 'bottomButtom.dart';
import 'genderSign.dart';
import 'constants.dart';
import 'roundIconBtn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_result.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;

  // var height = 150;
  int height = 150;
  int weight = 50;
  int age = 10;

  void increamentWeight() {
    if (weight <= 999) {
      weight++;
    }
  }

  void decreamentWeight() {
    if (weight >= 10) {
      weight--;
    }
  }

  void increamentAge() {
    if (age <= 400) {
      age++;
    }
  }

  void decreamentAge() {
    if (age > 1) {
      age--;
    }
  }

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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(kActiveSlideColor),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(kInActiveSlideColor),
                          overlayColor: Color(0x29EB1555)),
                      child: Slider(
                        value: height.toDouble(),
                        min: kMinHeight,
                        max: kMaxHeight,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT', style: kLabelTxtStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: <Widget>[
                            Text('$weight', style: kNumberTxtStyle),
                            Text('kg', style: kLabelTxtStyle)
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      decreamentWeight();
                                    });
                                  }),
                              SizedBox(width: 10),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      increamentWeight();
                                    });
                                  })
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: kLabelTxtStyle),
                        Text('$age', style: kNumberTxtStyle),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      decreamentAge();
                                    });
                                  }),
                              SizedBox(width: 10),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      increamentAge();
                                    });
                                  }),
                            ])
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            BottomButton(
              onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InputResult(height: height, weight: weight);
                }));
              },
            )
          ],
        ));
  }
}
