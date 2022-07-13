import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/karigar_ledger.dart';
import 'package:flutter_application_1/Pages/test.dart';

const Color myColor = Colors.brown;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cocktail App",
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: "Pacifico",
      ),
      home: const Test(),
    );
  }
}
