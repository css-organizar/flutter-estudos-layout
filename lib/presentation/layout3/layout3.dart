import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teste_layout_builder/application/widgets/row_sample.dart';

class Layout3 extends StatefulWidget {
  const Layout3({Key? key}) : super(key: key);

  @override
  _Layout3State createState() => _Layout3State();
}

class _Layout3State extends State<Layout3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout3'),
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
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ele gerou erro pois o MediaQuery pega o tamanho da tela e nao desconta o AppBar',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
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
