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
      decoration: InputDecoration(hintText: "Masukkan Sisi"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: etSisi,
      keyboardType: TextInputType.number,
    );
  }
}
