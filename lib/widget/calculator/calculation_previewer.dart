import 'package:flutter/material.dart';

class CalculationPreviewer extends StatelessWidget {
  const CalculationPreviewer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      color: Color.fromRGBO(34, 34, 34, 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            "10",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ],
      ),
    );
  }
}
