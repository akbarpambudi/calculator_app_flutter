import 'package:calculator_app/widget/calculator/calculation_previewer.dart';
import 'package:flutter/material.dart';

import 'calculator_keyboard.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
                fit: FlexFit.tight, flex: 1, child: CalculationPreviewer()),
            Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: CalculatorKeyboard(
                  onKeyPressed: (key) {
                    print(key);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
