import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_layout_builder/application/application_theme/application_theme.dart';

import 'package:teste_layout_builder/presentation/home_view/home_view.dart';

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({Key? key}) : super(key: key);

  @override
  State<ApplicationWidget> createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ApplicationTheme.lightTheme,
      home: HomeView(),
    );
  }
}
