import 'package:calculator_app/services/calculator_service.dart';
import 'package:calculator_app/widget/calculator/calculation_previewer.dart';
import 'package:flutter/material.dart';

import 'calculator_keyboard.dart';

class CalculatorScreen extends StatefulWidget {
  final CalculatorService _calculatorService;

  CalculatorScreen(this._calculatorService);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _calculationContent;

  @override
  void initState() {
    super.initState();
    _calculationContent = "0";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: CalculationPreviewer(
                  content: _calculationContent,
                )),
            Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: CalculatorKeyboard(
                  onKeyPressed: (key) {
                    setState(() {
                      widget._calculatorService.addExpression(key);
                      _calculationContent =
                          widget._calculatorService.expressions;
                    });
                  },
                  onExecutePressed: () {
                    setState(() {
                      widget._calculatorService.calculate();
                      _calculationContent =
                          "${widget._calculatorService.currentResult}";
                    });
                  },
                  onResetPressed: () {
                    setState(() {
                      widget._calculatorService.clearExpressions();
                      _calculationContent = "0";
                    });
                  },
                ))
          ],
        ),
      ),
    );
  }
}
