import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConvertKeliling extends StatelessWidget {
  final Function hitungKeliling;
  ConvertKeliling({Key key, @required this.hitungKeliling});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 50,
      child: RaisedButton(
        onPressed: hitungKeliling,
        color: Colors.indigo[400],
        textColor: Colors.white,
        child: Text("Hitung Keliling!"),
      ),
    );
  }
}
