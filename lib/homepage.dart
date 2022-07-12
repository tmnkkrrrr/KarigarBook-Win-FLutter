// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, avoid_init_to_null, prefer_typing_uninitialized_variables, duplicate_ignore

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/drink_detail.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_typing_uninitialized_variables
  var res, drinks;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    res = await http.get(Uri.parse(
        "http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"));
    drinks = jsonDecode(res.body)["drinks"];
    print(drinks.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.brown,
        Colors.orange,
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Krigar Book"),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: res != null
              ? ListView.builder(
                  itemCount: drinks.length,
                  itemBuilder: (context, index) {
                    var drink = drinks[index];
                    return ListTile(
                        leading: Hero(
                          tag: drink["idDrink"],
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              drink["strDrinkThumb"] ??
                                  "http://www.4motiondarlington.org/wp-content/uploads/2013/06/No-image-found.jpg",
                            ),
                          ),
                        ),
                        title: Text(
                          "${drink["strDrink"]}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          "${drink["idDrink"]}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DrinkDetail(drink: drink),
                            ),
                          );
                        });
                  },
                )
              : CircularProgressIndicator(backgroundColor: Colors.white),
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    Key? key,
    required this.drink,
  }) : super(key: key);

  final drink;

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    var key2 = null;
    return DrinkDetail(
      drink: widget.drink,
      key: key2,
    );
  }
}
