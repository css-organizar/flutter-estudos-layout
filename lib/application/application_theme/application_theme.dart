import 'package:flutter/material.dart';

// extension CustomColorScheme on ColorScheme {
//   Color get sucesso => const Color(0xFF28a745);
//   Color get informacao => const Color(0xFF17a2b8);
//   Color get atencao => const Color(0xFFffc107);
//   Color get perigo => const Color(0xFFdc3545);
// }

abstract class ApplicationTheme {
  static const sunmiPrimaryColor = Color(0xFFEC652C);
  static const scaffoldBackgroundColor = Colors.blueGrey;

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.blueGrey.shade100,
    appBarTheme: AppBarTheme(
      backgroundColor: sunmiPrimaryColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}
