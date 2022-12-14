import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konversi_suhu_flutter/widget/button.dart';
import 'package:konversi_suhu_flutter/widget/dropdown.dart';
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
  String _newValue = "Kelvin";
  double _result = 0;
  var listItems = ["Kelvin", "Reamur"];
  List<String> listHasil = [];

  void temperatureConversion() {
    setState(() {
      _inputUser = double.parse(getSuhu.text);
      if (_newValue == "Kelvin") {
        _result = 273 + _inputUser;
        listHasil.add("Kelvin : $_result");
      }  else {
        _result = 0.8 * _inputUser;
        listHasil.add("Reamur : $_result");
      }
    });
  }

  _onDropdownChanged(String? changeValue) {
    setState(() {
      _newValue = changeValue!;
      temperatureConversion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Konverter Suhu - 23 Rofika Nur Aini',
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
              dropdown(
                dropdownOnChanged: _onDropdownChanged, 
                listItem: listItems, 
                newValue: _newValue,
              ),
              InformationSuhu(
                //kelvin: _kelvin,
                //reamur: _reamur,
                result: _result,
              ),
              ButtonWidget(konversi: temperatureConversion),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    "Riwayat Konversi",
                    style: TextStyle(fontSize: 20),
                  )),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: ListView.builder(
                    itemCount: listHasil.length,
                    itemBuilder: (context, index) 
                    {
                      return Text(
                        listHasil[index],
                        style: const TextStyle(height: 1.5),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
