import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

void main() {
  runApp(const MyApp());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secound Screen'),
      ),
      body: Container(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
    // return MaterialApp(
    //     title: 'Karigar Book',
    //     theme:
    //         ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
    //     debugShowCheckedModeBanner: false,
    //     home: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: <Widget>[
    //         GestureDetector(
    //           child: const Text("Namm"), //Card,
    //           onTap: () => Navigator.of(context).pushReplacement(
    //               MaterialPageRoute(
    //                   builder: (BuildContext context) => const LoginScreen())),
    //         ),
    //         const SizedBox(
    //           width: 250.0,
    //           height: 100.0,
    //           child: Card(
    //             color: Color.fromARGB(255, 59, 163, 219),
    //             child: Center(
    //               child: Text(
    //                 'Karigar Jama',
    //                 style: TextStyle(
    //                     color: Color.fromARGB(255, 32, 62, 87),
    //                     fontWeight: FontWeight.bold),
    //               ), //Text
    //             ), //Center
    //           ), //Card
    //         ),
    //         const SizedBox(
    //           width: 250.0,
    //           height: 100.0,
    //           child: Card(
    //             color: Color.fromARGB(255, 59, 163, 219),
    //             child: Center(
    //               child: Text(
    //                 'Karigar Stock',
    //                 style: TextStyle(
    //                     color: Color.fromARGB(255, 32, 62, 87),
    //                     fontWeight: FontWeight.bold),
    //               ), //Text
    //             ), //Center
    //           ), //Card
    //         ),
    //       ],
    //     ));
  }
}
