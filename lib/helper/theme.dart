import 'package:flutter/material.dart';

ThemeData ligthThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xFF1D35),
    appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1D1D35)
    )
  );
}
