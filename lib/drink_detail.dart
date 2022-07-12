// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({Key? key, @required this.drink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          gradient: LinearGradient(colors: [
        Colors.brown,
        Colors.orange,
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(drink["strDrink"]),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                    drink["strDrinkThumb"],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "ID: ${drink["idDrink"]}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "${drink["strDrink"]}",
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
