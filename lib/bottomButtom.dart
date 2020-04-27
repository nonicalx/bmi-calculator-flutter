import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final int color;
  final Widget content;
  const BottomButton({
    this.color = 0xFFEB1555,
    this.content = const Text(
      'CALCULATE',
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(color),
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      height: 80,
      child: Center(child: content),
    );
  }
}
