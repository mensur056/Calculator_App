import 'package:calculator_app/widget/calculator_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyCalculator());

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      history = '';
      res = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == '÷' ||
        btnVal == 'x') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '÷') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: Color(0xFF22252d),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    history,
                    style: TextStyle(fontSize: 24, color: Colors.green),
                  ),
                  Text(
                    textToDisplay,
                    style: TextStyle(fontSize: 48, color: Colors.green),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF292d36),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: 'AC',
                          textColor: 0xFF62d3f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          text: 'C',
                          textColor: 0xFF62d3f7,
                          fillColor: 0xFF272b33,
                          callBack: btnOnClick,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '<',
                          textColor: 0xFF62d3f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '÷',
                          textColor: 0xFFea3d3e,
                          fillColor: 0xFF272b33,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '7',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '8',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '9',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: 'x',
                          textColor: 0xFFea3d3e,
                          fillColor: 0xFF272b33,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '4',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '5',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '6',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '-',
                          textColor: 0xFFea3d3e,
                          fillColor: 0xFF272b33,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '1',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '2',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '3',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '+',
                          textColor: 0xFFea3d3e,
                          fillColor: 0xFF272b33,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '+/-',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '0',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '00',
                          textColor: 0xFFf7f7f7,
                          fillColor: 0xFF272b33,
                        ),
                        CalculatorButton(
                          callBack: btnOnClick,
                          text: '=',
                          textColor: 0xFFea3d3e,
                          fillColor: 0xFF272b33,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
