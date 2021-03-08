import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'inputSisi.dart';

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
  List<String> listViewItem = List<String>();
  String _newValue = "Persegi";
  double _result = 0;
  double _inputSisi = 0;

  var listItem = ["Persegi", "Persegi Panjang", "Segitiga"];
  void _hitungLuas() {
    setState(() {
      _inputSisi = double.parse(etSisi.text);
      if (_newValue == "Persegi")
        _result = _inputSisi * _inputSisi;
      else if (_newValue == "Persegi Panjang")
        _result = _inputSisi;
      else
        _result = _inputSisi;
      listViewItem.add("$_newValue : $_result");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perhitungan Luas"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              InputSisi(etSisi: etSisi),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: _hitungLuas,
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Konversi Suhu"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Luas",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      _result.toStringAsFixed(1),
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              // );
            ],
          ),
        ),
      ),
    );
  }
}
