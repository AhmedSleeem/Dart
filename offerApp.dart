import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Offer App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0;
  double _price = 25.0;
  double _totalPrice = 25.0 ;
  void _incrementCounter() {
    setState(() {

        _counter++;
        _counter = min(_counter,100);
        _totalPrice = _price - _price * (_counter / 100);

    });
  }
  void _decrementCounter() {
    setState(() {

        _counter--;
        _counter = max(_counter,0);
        _totalPrice = _price - _price * (_counter / 100);

    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            RichText(
              text: TextSpan(
                text: 'Current Product Price  ',
                style: TextStyle(color: Colors.green),
                children: <TextSpan>[
                  TextSpan(text: '$_price EG', style: TextStyle(fontWeight: FontWeight.bold ,
                      color: Colors.purple)),
                ],
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Text('Set offer for the product',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  RaisedButton(child: Icon(Icons.add),onPressed: _incrementCounter,color: Colors.red,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$_counter %',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  RaisedButton(child: Icon(Icons.minimize),onPressed: _decrementCounter,color: Colors.green),
                ],
              ),
            ),


            RichText(
              text: TextSpan(
                text: 'Price of the product  after applying offer : ',
                style: TextStyle(color: Colors.green),
                children: <TextSpan>[
                  TextSpan(text: '$_totalPrice EG', style: TextStyle(fontWeight: FontWeight.bold ,
                      color: Colors.purple)),
                ],
              ),
            ),

          ],

        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
