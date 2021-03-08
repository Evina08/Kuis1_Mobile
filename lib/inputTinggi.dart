import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTinggi extends StatelessWidget {
  const InputTinggi({
    Key key,
    @required this.etTinggi,
  }) : super(key: key);

  final TextEditingController etTinggi;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "Masukkan Tinggi"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: etTinggi,
      keyboardType: TextInputType.number,
    );
  }
}
