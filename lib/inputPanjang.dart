import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPanjang extends StatelessWidget {
  const InputPanjang({
    Key key,
    @required this.etPanjang,
  }) : super(key: key);

  final TextEditingController etPanjang;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          hintText: "Masukkan Panjang",
          labelText: "Panjang",
          border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty) {
          return "Panjang belum diisi";
        }
        return null;
      },
      controller: etPanjang,
    );
  }
}
