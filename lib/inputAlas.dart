import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputAlas extends StatelessWidget {
  const InputAlas({
    Key key,
    @required this.etAlas,
  }) : super(key: key);

  final TextEditingController etAlas;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "Masukkan Alas"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: etAlas,
      keyboardType: TextInputType.number,
    );
  }
}
