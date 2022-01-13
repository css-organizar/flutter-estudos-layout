import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_layout_builder/presentation/layout1/layout1.dart';
import 'package:teste_layout_builder/presentation/layout2/layout2.dart';
import 'package:teste_layout_builder/presentation/layout3/layout3.dart';
import 'package:teste_layout_builder/presentation/layout4/layout4.dart';
import 'package:teste_layout_builder/presentation/layout5/layout5.dart';
import 'package:teste_layout_builder/presentation/layout6/layout6.dart';
import '../../application/application_theme/application_theme.dart';

class HomeView extends StatefulWidget {
  final String title = 'HomeView';

  const HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(Layout1());
              },
              child: ListTile(
                title: Text('Exemplo de Layout 1'),
                subtitle: Text('LayoutBuilder'),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Get.to(Layout2());
              },
              child: ListTile(
                title: Text('Exemplo de Layout 2'),
                subtitle: Text('MediaQuery'),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Get.to(Layout3());
              },
              child: ListTile(
                title: Text('Exemplo de Layout 3'),
                subtitle: Text('MediaQuery - Problema'),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Get.to(Layout4());
              },
              child: ListTile(
                title: Text('Exemplo de Layout 4'),
                subtitle: Text('MediaQuery - Resolução do Problema'),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Get.to(Layout5());
              },
              child: ListTile(
                title: Text('Exemplo de Layout 5'),
                subtitle: Text('MediaQuery - Resolução do Problema com LayoutBuilder'),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Get.to(Layout6());
              },
              child: ListTile(
                title: Text('Exemplo de Layout 6'),
                subtitle: Text('LayoutBuilder Composto'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
