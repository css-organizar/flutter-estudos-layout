import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teste_layout_builder/application/widgets/row_sample.dart';

class Layout4 extends StatefulWidget {
  const Layout4({Key? key}) : super(key: key);

  @override
  _Layout4State createState() => _Layout4State();
}

class _Layout4State extends State<Layout4> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Layout4'),
    );

    var screenHeight =
        (MediaQuery.of(context).size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            alignment: Alignment.center,
            height: screenHeight * .5,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Agora funcionou pois descontamos o appBar e o statusBar',
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
            height: screenHeight * .5,
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
    );
  }
}
