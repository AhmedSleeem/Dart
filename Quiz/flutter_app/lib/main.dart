import 'package:flutter/material.dart';


import './Quiz.dart';
import './Result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  String prev;


  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//speed code

class _MyAppState extends State<MyApp> {


  var _questions = [
    {"question": "what is your name ?",
      "answers": [
        {'text':'ahmed','score':10}, {'text':'youmna','score':15},
        {'text':'ali','score':5}, {'text':'omar','score':12}
      ]},

    {"question": "what is your age ?",
      "answers":[{'text':'24','score':10}, {'text':'25','score':15},
      {'text':'26','score':5}, {'text':'29','score':12}]
      },

    {"question": "what is your favorite animal ?",
      "answers": [ {'text':'lion','score':3}, {'text':'tiger','score':15},
        {'text':'elephant','score':5}, {'text':'jagwar','score':12}
        ]}
  ];

  int _questionIndex = 0;
  var _totalScore = 0;


  @override
  void dispose() {
    super.dispose();
    print("finish");
  }

  @override
  void initState() {
    print("welcome");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  void resetResult(){
    setState(() {
      _questionIndex=0;
      _totalScore = 0;
    });

  }

  @override
  void didUpdateWidget(covariant MyApp oldWidget) {
    print("didUpadateWidget");

    super.didUpdateWidget(oldWidget);
  }

  void getIndex(int score) {

    _totalScore+=score;
    setState(() {
      widget.prev = _questionIndex.toString();
      _questionIndex = _questionIndex + 1;
      print("old value =${widget.prev } and the new value =${_questionIndex}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Question App"),
        ),
        body: _questionIndex < _questions.length ?
        Quiz(_questions,_questionIndex,getIndex) :
        Result(_totalScore,resetResult),
      ),
    );
  }
}
