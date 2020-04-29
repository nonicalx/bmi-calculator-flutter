import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final int color;
  final String title;
  final Function onPress;
  const BottomButton(
      {this.color = 0xFFEB1555, this.title = 'CALCULATE', this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: Color(color),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: 70,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
        ),
      ),
    );
  }
}
