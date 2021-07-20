import 'package:flutter/material.dart';

ThemeData ligthThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
  );
}
