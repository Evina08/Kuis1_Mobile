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
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          hintText: "Masukkan Alas",
          labelText: "Alas",
          border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty) {
          return "Alas belum diisi";
        }
        return null;
      },
      controller: etAlas,
    );
  }
}
