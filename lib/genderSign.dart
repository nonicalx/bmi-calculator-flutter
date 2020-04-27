import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderSign extends StatelessWidget {
  final String gender;
  final int color;
  const GenderSign({@required this.gender, this.color = 0xFF8D8E98});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender.toLowerCase() == "male"
              ? FontAwesomeIcons.mars
              : FontAwesomeIcons.venus,
          size: 70,
          color: Color(color),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          gender.toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
