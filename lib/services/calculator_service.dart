import 'package:math_expressions/math_expressions.dart';

class CalculatorService {
  String _expressions = "";
  double _currentResult;

  void addExpression(String expression) {
    _expressions = "$_expressions$expression";
  }

  void clearExpressions() {
    _expressions = "";
  }

  void calculate() {
    Parser p = new Parser();
    Expression exp = p.parse(_expressions);
    _currentResult = exp.evaluate(EvaluationType.REAL, ContextModel());
  }

  String get expressions {
    return _expressions;
  }

  double get currentResult {
    return _currentResult;
  }
}
