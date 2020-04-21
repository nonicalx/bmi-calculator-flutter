import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  int color;
  ReuseableCard({this.color = 0xFF1D1E33});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
