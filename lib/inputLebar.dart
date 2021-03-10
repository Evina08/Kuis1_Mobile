import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputLebar extends StatelessWidget {
  const InputLebar({
    Key key,
    @required this.etLebar,
  }) : super(key: key);

  final TextEditingController etLebar;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          hintText: "Masukkan Lebar",
          labelText: "Lebar",
          border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty) {
          return "Lebar belum diisi";
        }
        return null;
      },
      controller: etLebar,
    );
  }
}
