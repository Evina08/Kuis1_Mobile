import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'inputSisi.dart';
import 'inputLebar.dart';
import 'inputPanjang.dart';
import 'inputAlas.dart';
import 'inputTinggi.dart';
import 'resultLuas.dart';
import 'resultKeliling.dart';
import 'convertLuas.dart';
import 'convertKeliling.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etSisi = new TextEditingController();
  TextEditingController etPanjang = new TextEditingController();
  TextEditingController etLebar = new TextEditingController();
  TextEditingController etAlas = new TextEditingController();
  TextEditingController etTinggi = new TextEditingController();

  List<String> listViewItem = List<String>();
  String _newValue = "Persegi";
  double _result = 0;
  double _inputPanjang = 0;
  double _inputLebar = 0;
  double _inputAlas = 0;
  double _inputTinggi = 0;
  double _inputSisi = 0;
  double _resultKeliling = 0;
  var listItem = ["Persegi", "Persegi Panjang", "Segitiga"];
  void _hitungLuas() {
    setState(() {
      _inputSisi = double.parse(etSisi.text);
      _inputPanjang = double.parse(etPanjang.text);
      _inputLebar = double.parse(etLebar.text);
      _inputAlas = double.parse(etAlas.text);
      _inputTinggi = double.parse(etTinggi.text);
      if (_newValue == "Persegi")
        _result = _inputSisi * _inputSisi;
      else if (_newValue == "Persegi Panjang")
        _result = _inputPanjang * _inputLebar;
      else
        _result = 1 / 2 * (_inputAlas + _inputTinggi);
      listViewItem.add("$_newValue : $_result");
    });
  }

  void _hitungKeliling() {
    setState(() {
      _inputSisi = double.parse(etSisi.text);
      _inputPanjang = double.parse(etPanjang.text);
      _inputLebar = double.parse(etLebar.text);
      _inputAlas = double.parse(etAlas.text);
      _inputTinggi = double.parse(etTinggi.text);
      if (_newValue == "Persegi")
        _resultKeliling = 4 * _inputSisi;
      else if (_newValue == "Persegi Panjang")
        _resultKeliling = 2 * (_inputPanjang + _inputLebar);
      else
        _resultKeliling = _inputSisi + _inputAlas + _inputTinggi;
      listViewItem.add("$_newValue : $_result");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Bangun Datar',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perhitungan Luas dan Keliling"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Persegi',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              InputSisi(etSisi: etSisi),
              Container(
                child: Text(
                  'Persegi Panjang',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              InputPanjang(etPanjang: etPanjang),
              InputLebar(etLebar: etLebar),
              Container(
                child: Text(
                  'Segitiga ',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              InputAlas(etAlas: etAlas),
              InputTinggi(etTinggi: etTinggi),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: (String changeValue) {
                  setState(() {
                    _newValue = changeValue;
                    _hitungLuas();
                    _hitungKeliling();
                  });
                },
              ),
              // ResultLuas(result: _result),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ResultLuas(result: _result),
                    ResultKeliling(resultKel: _resultKeliling)
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ConvertLuas(hitungLuas: _hitungLuas),
                    ConvertKeliling(hitungKeliling: _hitungKeliling),
                  ],
                ),
              ),
              // ConvertLuas(hitungLuas: _hitungLuas),
            ],
          ),
        ),
      ),
    );
  }
}
