


import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget{

  final String _textQuestion;


  Question(this._textQuestion);


  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,

      color: Colors.black12,
      child:
      Text(_textQuestion,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green,fontSize: 27),
      ),
    );
  }

}