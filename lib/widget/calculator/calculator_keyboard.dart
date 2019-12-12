import 'package:flutter/material.dart';

import 'calculator_key.dart';

class CalculatorKeyboard extends StatelessWidget {
  final Function onKeyPressed;

  CalculatorKeyboard({@required this.onKeyPressed});

  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(1, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: <Widget>[
                CalculatorKey(
                    color: Theme.of(context).primaryColor,
                    symbol: "C",
                    textColor: Colors.white,
                    onPress: onKeyPressed),
                CalculatorKey(
                  color: Theme.of(context).primaryColor,
                  symbol: "+/-",
                  onPress: onKeyPressed,
                  textColor: Colors.white,
                ),
                CalculatorKey(
                    color: Theme.of(context).primaryColor,
                    symbol: "%",
                    onPress: onKeyPressed,
                    textColor: Colors.white),
                CalculatorKey(
                  color: Theme.of(context).primaryColor,
                  symbol: "/",
                  textColor: Colors.white,
                  onPress: onKeyPressed,
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: <Widget>[
                CalculatorKey(
                  symbol: "9",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                  symbol: "8",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                  symbol: "7",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                    color: Theme.of(context).primaryColor,
                    symbol: "/",
                    onPress: onKeyPressed,
                    textColor: Colors.white)
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: <Widget>[
                CalculatorKey(
                  symbol: "6",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                  symbol: "5",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                  symbol: "4",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                    color: Theme.of(context).primaryColor,
                    symbol: "+",
                    onPress: onKeyPressed,
                    textColor: Colors.white)
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: <Widget>[
                CalculatorKey(
                  symbol: "3",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                  symbol: "2",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                  symbol: "1",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                    color: Theme.of(context).primaryColor,
                    symbol: "+",
                    onPress: onKeyPressed,
                    textColor: Colors.white)
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: <Widget>[
                CalculatorKey(
                  flex: 2,
                  symbol: "0",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                  symbol: ".",
                  onPress: onKeyPressed,
                ),
                CalculatorKey(
                    color: Theme.of(context).primaryColor,
                    symbol: "=",
                    onPress: onKeyPressed,
                    textColor: Colors.white)
              ],
            ),
          )
        ],
      ),
    );
  }
}
