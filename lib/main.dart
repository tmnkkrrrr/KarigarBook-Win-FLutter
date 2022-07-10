// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

void main() {
  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  //No Constructor
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cocktail App",
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: "Pacifico",
      ),
      home: HomePage(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Center(
          child: Text("Text1"),
        ),
      ),
    );
  }
}
