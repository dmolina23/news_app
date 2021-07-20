import 'package:flutter/material.dart';
import 'package:flutter_news/helper/theme.dart';
import 'package:flutter_news/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News',
      // Solo oculta una etiqueta cuando ejecutamos la app en modo Debug
      debugShowCheckedModeBanner: false,
      //Los temas están en helper/theme.dart
      theme: ligthThemeData(context),
      darkTheme: darkThemeData(context),
      home: HomePage(),
    );
  }
}