import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {

  final  List<Map<String,Object>>questions;
  final questionIndex;
  final Function getIndex;

  Quiz(this.questions, this.questionIndex, this.getIndex);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Question(questions[questionIndex]['question']),

        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return  Answer(()=>{getIndex(answer['score'])},answer['text']);}
        ).toList()


      ],
    );
  }
}
