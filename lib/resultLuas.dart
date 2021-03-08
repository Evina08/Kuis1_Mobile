import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResultLuas extends StatelessWidget {
  const ResultLuas({
    Key key,
    @required double result,
  })  : _result = result,
        super(key: key);

  final double _result;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Luas",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            _result.toStringAsFixed(1),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
