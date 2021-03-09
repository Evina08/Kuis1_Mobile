import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResultKeliling extends StatelessWidget {
  const ResultKeliling({
    Key key,
    @required double resultKel,
  })  : _resultKeliling = resultKel,
        super(key: key);

  final double _resultKeliling;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Keliling", style: TextStyle(height: 1.5, fontSize: 20)),
        Text(
          _resultKeliling.toStringAsFixed(1),
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
