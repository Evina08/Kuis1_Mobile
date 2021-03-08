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
      decoration: InputDecoration(hintText: "Masukkan Lebar"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: etLebar,
      keyboardType: TextInputType.number,
    );
  }
}
