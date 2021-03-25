import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Employee_model.dart';
import 'WebService.dart';
import 'add_employee.dart';

class EmployeeList extends StatefulWidget {
  @override
  _EmployeeList createState() => _EmployeeList();
}

class _EmployeeList extends State<EmployeeList> {
  List<Employee> _employees = List<Employee>();



  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Provider.of<WebService>(context , listen: false).loadEmployeeData();
  }



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee'),
      ),
      body: Consumer<WebService>(
        builder: (context, model, child) {
          return ListView.builder(
            itemCount: model.empList.length,
            itemBuilder: (context, index) {
              return new Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Align(
                      child: Text(
                        'name : ${model.empList[index].name}',
                        style: TextStyle(fontSize: 20),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Align(
                      child: Text(
                        'age : ${model.empList[index].age}',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      alignment: Alignment.centerLeft,
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddEmployee()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}