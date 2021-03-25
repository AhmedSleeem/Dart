import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netork_demo/Employee_model.dart';
import 'package:provider/provider.dart';

import 'WebService.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmpView createState() => _AddEmpView();
}

class _AddEmpView extends State<AddEmployee> {
  final name = TextEditingController();
  final age = TextEditingController();
  final salary = TextEditingController();

  void request() async {
    final result =
    await WebService().createEmployee(name.text, age.text, salary.text);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Add Employee',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
              controller: name,
              decoration: InputDecoration(hintText: 'Employee Name')),
          TextField(
              controller: age,
              decoration: InputDecoration(hintText: 'Employee age')),
          TextField(
              controller: salary,
              decoration: InputDecoration(hintText: 'Employee Salary')),
          SizedBox(
            height: 30,
          ),
          Consumer<WebService>(
            builder: (context, model, child) {
              return FloatingActionButton.extended(
                backgroundColor: Colors.purple,
                onPressed: () {
                  model.createEmployee(name.text, age.text, salary.text).then((value) => Navigator.pop(context));
                },
                label: Text(
                  'ADD',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}