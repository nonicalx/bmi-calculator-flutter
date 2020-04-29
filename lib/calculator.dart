import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator {
  final int height;
  final int weight;

  double _bmi;
  String _bmiValue;

  Calculator({@required this.height, @required this.weight}) {
    calculateBMI();
  }

  void calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    _bmiValue = _bmi.toStringAsFixed(1);
  }

  Map getResult() {
    if (_bmi >= 25) {
      return {
        'value': _bmiValue,
        'status': 'OVERWEIGHT',
        'comment': 'You need to cut down on your carbs and workout more',
        'color': 0xFFC62828
      };
    } else if (_bmi > 18.5 && _bmi < 25) {
      return {
        'value': _bmiValue,
        'status': 'NORMAL',
        'comment': 'You are in great shape keep it up',
        'color': 0xFF24D876
      };
    } else {
      return {
        'value': _bmiValue,
        'status': 'UNDERWEIGHT',
        'comment': 'You need to start eating healthly',
        'color': 0xFFFF8F00
      };
    }
  }
}
