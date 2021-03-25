import 'package:flutter/material.dart';
import 'package:netork_demo/Employee_model.dart';
import 'package:netork_demo/WebService.dart';

import 'employee_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employee',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:
      EmployeeList(),


    );
  }
}


