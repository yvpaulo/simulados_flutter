import 'package:flutter/material.dart';
import 'package:simulados_app/pages/home/home_screen.dart';
import 'package:simulados_app/pages/turmas/turmas_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foco na caveira simulados',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TurmasScreen(),
      //HomeScreen(),
    );
  }
}

