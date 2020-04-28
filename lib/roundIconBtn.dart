import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {


  final IconData icon;
  final Function onPress;
  @override
  RoundIconButton({@required this.icon, this.onPress});
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.4,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      onPressed: onPress,
    );
  }
}
