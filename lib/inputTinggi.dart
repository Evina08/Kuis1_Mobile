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
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          hintText: "Masukkan Tinggi",
          labelText: "Tinggi",
          border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty) {
          return "Tinggi belum diisi";
        }
        return null;
      },
      controller: etTinggi,
    );
  }
}
