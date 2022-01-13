import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            'Exemplo',
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: Text(
            'Exemplo',
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: Text(
            'Exemplo',
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
