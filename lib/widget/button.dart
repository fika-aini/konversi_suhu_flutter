import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.konversi,
  });
  final Function() konversi;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        onPressed: () {
          konversi();
        },
        child: const Text(
          'Konversi Suhu',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}