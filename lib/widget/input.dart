import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputSuhu extends StatelessWidget {
  const InputSuhu({
    Key? key,
    required this.getSuhu,
  }) : super(key: key);

  final TextEditingController getSuhu;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
          child: TextFormField(
            controller: getSuhu,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Masukkan Suhu Dalam Celcius',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
      ],
    );
  }
}