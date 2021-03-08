import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              TextFormField(
                decoration: InputDecoration(hintText: "Masukkan Sisi"),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: null,
                keyboardType: TextInputType.number,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: null,
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
                      "",
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
