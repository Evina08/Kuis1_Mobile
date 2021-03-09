import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResultKeliling extends StatelessWidget {
  const ResultKeliling({
    Key key,
    @required double result,
  })  : _result = result,
        super(key: key);

  final double _result;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Keliling", style: TextStyle(height: 1.5, fontSize: 20)),
        Text(
          _result.toStringAsFixed(1),
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
