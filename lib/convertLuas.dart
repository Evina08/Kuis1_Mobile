import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConvertLuas extends StatelessWidget {
  final Function hitungLuas;
  ConvertLuas({Key key, @required this.hitungLuas});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        onPressed: hitungLuas,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Konversi Suhu"),
      ),
    );
  }
}
