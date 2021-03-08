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
      decoration: InputDecoration(hintText: "Masukkan Panjang"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: etPanjang,
      keyboardType: TextInputType.number,
    );
  }
}
