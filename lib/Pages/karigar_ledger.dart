// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';
// import 'package:pluto_grid/pluto_grid.dart';

void main() {
  runApp(const KarigarLedger());
}

class KarigarLedger extends StatefulWidget {
  const KarigarLedger({Key? key}) : super(key: key);

  @override
  State<KarigarLedger> createState() => _KarigarLedgerState();
}

class _KarigarLedgerState extends State<KarigarLedger> {
  List<DynamicWidget> listDynamic = [];

  List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: "Cocktail App",
        theme: ThemeData(
          primarySwatch: Colors.brown,
          fontFamily: "Pacifico",
        ),
        home: Scaffold(
//Col 1
            body: Column(children: <Widget>[
          //Col 1,Row 1
          Row(children: <Widget>[
            Expanded(
                child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                shadowColor: Colors.red,
                elevation: 10,
              ),
              onPressed: () {
                print('Pressed');
              },
              child: const Text(
                'Miraz KadaiWala',
                style: TextStyle(
                  fontSize: 45,
                ),
              ),
            )),
//Row1 Col2
            Expanded(
                child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: const Color.fromARGB(255, 178, 173, 35),
                shadowColor: const Color.fromARGB(255, 54, 244, 127),
                elevation: 10,
              ),
              onPressed: () {
                print('Pressed');
              },
              child: const Text(
                'Total Pending Pc : 46 ',
                style: TextStyle(
                  fontSize: 45,
                ),
              ),
            )
                // ),

                ),

            //
          ]),

//Row1 Col1
          Row(children: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,

                // shadowColor: Colors.red,
                elevation: 10,
              ),
              onPressed: () {
                print('Pressed');
              },
              child: const Text(
                'Date',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  // shadowColor: Colors.red,
                  elevation: 10,
                ),
                onPressed: () {
                  print('Pressed');
                },
                child: const Text(
                  'Item Name',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  // shadowColor: Colors.red,
                  elevation: 10,
                ),
                onPressed: () {
                  print('Pressed');
                },
                child: const Text(
                  'Remarks',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
                // shadowColor: Colors.red,
                elevation: 10,
              ),
              onPressed: () {
                print('Pressed');
              },
              child: const Text(
                'Pc Issued',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
                // shadowColor: Colors.red,
                elevation: 10,
              ),
              onPressed: () {
                print('Pressed');
              },
              child: const Text(
                'Pc Received',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
                // shadowColor: Colors.red,
                elevation: 10,
              ),
              onPressed: () {
                print('');
              },
              child: const Text(
                'Pc Remaining',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  // shadowColor: Colors.red,
                  elevation: 10,
                ),
                onPressed: () {
                  print('');
                },
                child: const Text(
                  'JobWork',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  // shadowColor: Colors.red,
                  elevation: 10,
                ),
                onPressed: () {
                  print('');
                },
                child: const Text(
                  'Issuer',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ]),

// Row3 Col1
          Row(children: <Widget>[
            const SizedBox(
                width: 90,
                height: 25,
                child: TextField(
                    style: TextStyle(
                        fontSize: 20.0, height: 1, color: Colors.black))),

            const SizedBox(width: 200, height: 25, child: TextField()),
            const SizedBox(
              width: 2,
              height: 25,
            ),
            const SizedBox(width: 200, height: 25, child: TextField()),
            const SizedBox(
              width: 2,
              height: 25,
            ),
            const SizedBox(width: 117, height: 25, child: TextField()),
            const SizedBox(
              width: 2,
              height: 25,
            ),
            const SizedBox(width: 138, height: 25, child: TextField()),
            const SizedBox(
              width: 2,
              height: 25,
            ),
            const SizedBox(width: 155, height: 25, child: TextField()),
            const SizedBox(
              width: 2,
              height: 25,
            ),
            const SizedBox(width: 200, height: 25, child: TextField()),
            const SizedBox(
              width: 2,
              height: 25,
            ),
            const SizedBox(width: 200, height: 25, child: TextField()),

            const IconButton(
              iconSize: 72,
              icon: const Icon(Icons.add),
              onPressed: null,
            )

            //
          ])
        ])));
  }
}

// class Led extends StatelessWidget {
//   @override
//   Widget build(BuildContext) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home:
//   }
// }

// List<PlutoColumn> columns = [
//   /// Text Column definition
//   PlutoColumn(
//     title: 'text column',
//     field: 'text_field',
//     type: PlutoColumnType.text(),
//   ),

//   /// Number Column definition
//   PlutoColumn(
//     title: 'number column',
//     field: 'number_field',
//     type: PlutoColumnType.number(),
//   ),

//   /// Select Column definition
//   PlutoColumn(
//     title: 'select column',
//     field: 'select_field',
//     type: PlutoColumnType.select(['item1', 'item2', 'item3']),
//   ),

//   /// Datetime Column definition
// ];

// List<PlutoRow> rows = [
//   PlutoRow(cells: {
//     'text_field': PlutoCell(value: 'Text cell value1'),
//     'number_field': PlutoCell(value: 2020),
//     'select_field': PlutoCell(value: 'item1'),
//   }),
//   PlutoRow(
//     cells: {
//       'text_field': PlutoCell(value: 'Text cell value2'),
//       'number_field': PlutoCell(value: 2021),
//       'select_field': PlutoCell(value: 'item2'),
//     },
//   ),
//   PlutoRow(
//     cells: {
//       'text_field': PlutoCell(value: 'Text cell value3'),
//       'number_field': PlutoCell(value: 2022),
//       'select_field': PlutoCell(value: 'item3'),
//     },
//   ),
// ];

// ignore: must_be_immutable
class DynamicWidget extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Enter Data '),
      ),
    );
  }
}
