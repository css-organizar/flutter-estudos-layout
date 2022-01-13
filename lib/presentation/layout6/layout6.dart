import 'package:flutter/material.dart';

class Layout6 extends StatefulWidget {
  const Layout6({Key? key}) : super(key: key);

  @override
  _Layout6State createState() => _Layout6State();
}

class _Layout6State extends State<Layout6> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Layout6'),
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
                height: constraint.maxHeight * .10,
                width: constraint.maxWidth,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                      ),
                      alignment: Alignment.center,
                      height: constraint.maxHeight,
                      width: constraint.maxWidth * .5,
                      child: Text(
                        'Purple',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                      ),
                      alignment: Alignment.center,
                      height: constraint.maxHeight,
                      width: constraint.maxWidth * .5,
                      child: Text(
                        'Yellow',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                height: constraint.maxHeight * .9,
                width: constraint.maxWidth,
                child: Text(
                  'Blue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
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
