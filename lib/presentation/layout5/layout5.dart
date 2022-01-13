import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teste_layout_builder/application/widgets/row_sample.dart';

class Layout5 extends StatefulWidget {
  const Layout5({Key? key}) : super(key: key);

  @override
  _Layout5State createState() => _Layout5State();
}

class _Layout5State extends State<Layout5> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Layout5'),
    );

    return Scaffold(
      appBar: appBar,
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                alignment: Alignment.center,
                height: constraint.maxHeight * .5,
                width: constraint.maxWidth,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Agora funcionou pois descontamos o appBar e o statusBar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                height: constraint.maxHeight * .5,
                width: constraint.maxWidth,
                child: Text(
                  'Exemplo',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
