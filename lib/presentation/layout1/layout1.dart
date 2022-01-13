import 'package:flutter/material.dart';
import 'package:teste_layout_builder/application/widgets/row_sample.dart';

class Layout1 extends StatefulWidget {
  const Layout1({Key? key}) : super(key: key);

  @override
  _Layout1State createState() => _Layout1State();
}

class _Layout1State extends State<Layout1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout1'),
      ),
      body: LayoutBuilder(
        builder: (_, constraints) => IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FittedBox(
                      child: Image.asset(
                        'assets/sunmi_logo.png',
                        width: 112,
                        height: 112,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Lorem ipsum dolor sit amet',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                            textAlign: TextAlign.justify,
                            style: TextStyle(),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          if (constraints.maxWidth >= 370) RowExample()
                        ],
                      ),
                    )
                  ],
                ),
                if (constraints.maxWidth <= 369) RowExample()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
