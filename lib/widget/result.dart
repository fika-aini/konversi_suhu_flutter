import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InformationSuhu extends StatelessWidget {
  const InformationSuhu({
    super.key, 
    required this.result
  });
  
  final double result;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text("Hasil Konversi"),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Expanded(
              child: Text(
                result.toStringAsFixed(2),
                style: const TextStyle(fontSize: 36),
              ),
            ),
          ),
        ],
      ),
    );
  }
}