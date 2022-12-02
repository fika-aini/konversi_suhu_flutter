import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InformationSuhu extends StatelessWidget {
  const InformationSuhu({
    Key? key,
    required this.kelvin,
    required this.reamur,
  }) : super(key: key);

  final double kelvin;
  final double reamur;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text('Suhu dalam Kelvin'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      kelvin.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text('Suhu dalam Reamur'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      reamur.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}