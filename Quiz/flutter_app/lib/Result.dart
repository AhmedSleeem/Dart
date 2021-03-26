import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore,this.resetQuiz);

  String get resultPhrase {
    var resultText;

    if (resultScore < 20) {
      resultText = "you don't know me";
    } else if (resultScore <= 24) {
      resultText = "maybe you  know me";
    } else if (resultScore <= 26) {
      resultText = "good job";
    } else {
      resultText = "you are awesome ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child:
          Text("Restart Quiz"),textColor: Colors.blue,)
        ],
      ),
    );
  }
}
