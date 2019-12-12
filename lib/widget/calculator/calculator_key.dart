import 'package:flutter/material.dart';

class CalculatorKey extends StatelessWidget {
  final String symbol;
  final Function onPress;
  final int flex;
  final Color color;
  final Color textColor;

  CalculatorKey(
      {@required this.symbol,
      @required this.onPress,
      this.flex = 1,
      this.color,
      this.textColor});

  Widget build(BuildContext context) {
    var buttonColor = this.color ?? Color.fromRGBO(199, 199, 199, 1);
    var textColor = this.textColor ?? Colors.black;
    var buttonBorderColor = Color.fromRGBO(245, 245, 245, 0.5);

    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: buttonBorderColor, width: 1)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              onPress(symbol);
            },
            child: Center(
              child: Text(
                symbol,
                style: TextStyle(fontSize: 24, color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
