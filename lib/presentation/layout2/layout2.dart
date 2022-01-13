import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teste_layout_builder/application/widgets/row_sample.dart';

class Layout2 extends StatefulWidget {
  const Layout2({Key? key}) : super(key: key);

  @override
  _Layout2State createState() => _Layout2State();
}

class _Layout2State extends State<Layout2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout2'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width * .8,
              child: Text(
                'Exemplo',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
