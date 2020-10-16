import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:simulados_app/pages/home/home_screen.dart';
import 'package:simulados_app/pages/turmas/turmas_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() {



  runApp(MyApp());

  //Firebase.initializeApp();

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
  /*Widget FutureBuilder(
  // Initialize FlutterFire
  future: Firebase.initializeApp(),

  builder: (context, snapshot) {

  // Check for errors
  if (snapshot.hasError) {
  print('ferrose');
  }

  // Once complete, show your application
  if (snapshot.connectionState == ConnectionState.done) {
  FirebaseFirestore.instance.collection("col").doc("doc").set({"texto": "teste"});
  return TurmasScreen();
  }

  // Otherwise, show something whilst waiting for initialization to complete
  return TurmasScreen();
  },
  );*/
}

