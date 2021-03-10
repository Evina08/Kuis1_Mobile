import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputSisi extends StatelessWidget {
  const InputSisi({
    Key key,
    @required this.etSisi,
  }) : super(key: key);

  final TextEditingController etSisi;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          hintText: "Masukkan Sisi",
          labelText: "Sisi",
          border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty) {
          return "Sisi belum diisi";
        }
        return null;
      },
      controller: etSisi,
    );
  }
}
