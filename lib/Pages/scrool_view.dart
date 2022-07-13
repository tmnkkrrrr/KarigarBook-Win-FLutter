// import 'package:flutter/material.dart';
// // import 'package:pluto_grid/pluto_grid.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// class Employee {
//   Employee(this.id, this.name, this.designation, this.salary);
//   final int id;
//   final String name;
//   final String designation;
//   final int salary;
// }

// // List<Employee> employees = <Employee>[];
// // late EmployeeDataSource employeeDataSource;

// // @override
// // void initState() {
// //  // super.initState();
// //   employees = getEmployees();
// //   employeeDataSource = EmployeeDataSource(employees: employees);
// // }

// List<Employee> getEmployees() {
//   return [
//     Employee(10001, 'James', 'Project Lead', 20000),
//     Employee(10002, 'Kathryn', 'Manager', 30000),
//     Employee(10003, 'Lara', 'Developer', 15000),
//     Employee(10004, 'Michael', 'Designer', 15000),
//     Employee(10005, 'Martin', 'Developer', 15000),
//     Employee(10006, 'Newberry', 'Developer', 15000),
//     Employee(10007, 'Balnc', 'Developer', 15000),
//     Employee(10008, 'Perry', 'Developer', 15000),
//     Employee(10009, 'Gable', 'Developer', 15000),
//     Employee(10010, 'Grimes', 'Developer', 15000)
//   ];
// }

// class EmployeeDataSource extends DataGridSource {
//   EmployeeDataSource(List<Employee> employees) {
//     dataGridRows = employees
//         .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
//               DataGridCell<int>(columnName: 'id', value: e.id),
//               DataGridCell<String>(columnName: 'name', value: e.name),
//               DataGridCell<String>(
//                   columnName: 'designation', value: e.designation),
//               DataGridCell<int>(columnName: 'salary', value: e.salary),
//             ]))
//         .toList();
//   }

//   late List<DataGridRow> dataGridRows;

//   @override
//   List<DataGridRow> get rows => dataGridRows;

//   @override
//   DataGridRowAdapter? buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((dataGridCell) {
//       return Container(
//         alignment: (dataGridCell.columnName == 'id' ||
//                 dataGridCell.columnName == 'salary')
//             ? Alignment.centerRight
//             : Alignment.centerLeft,
//         padding: EdgeInsets.all(16.0),
//         child: Text(dataGridCell.value.toString()),
//       );
//     }).toList());
//   }
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: Text('Syncfusion DataGrid'),
//       ),
//       body: Center(
//         child: Expanded(
//           child: SfDataGrid(
//             source: _employeeDataSource,
//           ),
//         ),
//       ));
// }
