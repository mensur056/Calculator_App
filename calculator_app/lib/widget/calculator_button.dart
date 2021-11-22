import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const CalculatorButton(
      {required this.text,
      required this.callBack,
      required this.fillColor,
      required this.textColor,
      required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 55,
        height: 55,
        child: FlatButton(
          onPressed: () {
            callBack(text);
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Text(
            text,
            style: TextStyle(fontSize: textSize),
          ),
          color: Color(fillColor),
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
