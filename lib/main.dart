import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konversi_suhu_flutter/widget/button.dart';
import 'package:konversi_suhu_flutter/widget/input.dart';
import 'package:konversi_suhu_flutter/widget/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController getSuhu = new TextEditingController();

  double _kelvin = 0;
  double _reamur = 0;
  double _inputUser = 0;

  void temperatureConversion() {
    setState(() {
      _inputUser = double.parse(getSuhu.text);
      _kelvin = _inputUser + 273;
      _reamur = _inputUser * (4 / 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Konverter Suhu"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputSuhu(
                getSuhu: getSuhu,
              ),
              InformationSuhu(
                kelvin: _kelvin,
                reamur: _reamur,
              ),
              ButtonWidget(konversi: temperatureConversion)
            ],
          )),
    );
  }
}