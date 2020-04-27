import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final int color;
  final Widget content;
  final Function onPress;
  ReuseableCard({this.color = 0xFF1D1E33, this.content, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Container(
          child: Center(child: content),
        ),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
