import 'package:flutter/material.dart';
import 'input_result.dart';

class BottomButton extends StatelessWidget {
  final int color;
  final String title;
  const BottomButton({this.color = 0xFFEB1555, this.title = 'CALCULATE'});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          print('clickeddddd');
          return InputResult();
        }));
      },
      child: Container(
        color: Color(color),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: 80,
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
