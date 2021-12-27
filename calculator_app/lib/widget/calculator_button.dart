import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize=23;
  final Function callBack;

  const CalculatorButton(
      {required this.text,
      required this.callBack,
      required this.fillColor,
      required this.textColor,
      textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 50,
        height: 50,
        child: FlatButton(
          onPressed: () {
            callBack(text);
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          child: Text(
            text,
            style: TextStyle(fontSize: textSize,fontWeight: FontWeight.bold),
          ),
          color: Color(fillColor),
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
//0xFF292d36