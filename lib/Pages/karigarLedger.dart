import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

void main() {
  runApp(KarigarLedger());
}

class KarigarLedger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "Cocktail App",
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: "Pacifico",
      ),
      home: Led(),
    );
  }
}

class Led extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Karigar Ledger'),
          ),
          body: Column(children: [
            Row(
              children: <Widget>[
                Expanded(
                    child: OutlinedButton(
                  child: Text(
                    'Miraz KadaiWala',
                    style: TextStyle(
                      fontSize: 45,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    shadowColor: Colors.red,
                    elevation: 10,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                )),
                Expanded(
                    child: OutlinedButton(
                  child: Text(
                    'Total Pending Pc : 46 ',
                    style: TextStyle(
                      fontSize: 45,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromARGB(255, 178, 173, 35),
                    shadowColor: Color.fromARGB(255, 54, 244, 127),
                    elevation: 10,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                )),
              ],
            ),
            Row(children: <Widget>[
              Expanded(
                  child: OutlinedButton(
                child: Text(
                  'Address : ...............................',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color.fromARGB(255, 200, 200, 149),
                  shadowColor: Colors.red,
                  elevation: 10,
                ),
                onPressed: () {
                  print('Pressed');
                },
              )),
            ]),
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(1),
                  child: PlutoGrid(
                      columns: columns,
                      rows: rows,
                      onChanged: (PlutoGridOnChangedEvent event) {
                        print(event);
                      },
                      onLoaded: (PlutoGridOnLoadedEvent event) {
                        print(event);
                      }),
                ),
              ],
            )
          ]),
        ));
  }
}

List<PlutoColumn> columns = [
  /// Text Column definition
  PlutoColumn(
    title: 'text column',
    field: 'text_field',
    type: PlutoColumnType.text(),
  ),

  /// Number Column definition
  PlutoColumn(
    title: 'number column',
    field: 'number_field',
    type: PlutoColumnType.number(),
  ),

  /// Select Column definition
  PlutoColumn(
    title: 'select column',
    field: 'select_field',
    type: PlutoColumnType.select(['item1', 'item2', 'item3']),
  ),

  /// Datetime Column definition
];

List<PlutoRow> rows = [
  PlutoRow(cells: {
    'text_field': PlutoCell(value: 'Text cell value1'),
    'number_field': PlutoCell(value: 2020),
    'select_field': PlutoCell(value: 'item1'),
  }),
  PlutoRow(
    cells: {
      'text_field': PlutoCell(value: 'Text cell value2'),
      'number_field': PlutoCell(value: 2021),
      'select_field': PlutoCell(value: 'item2'),
    },
  ),
  PlutoRow(
    cells: {
      'text_field': PlutoCell(value: 'Text cell value3'),
      'number_field': PlutoCell(value: 2022),
      'select_field': PlutoCell(value: 'item3'),
    },
  ),
];
