import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handleClick;
  final String btnLable;


  Answer(this.handleClick,this.btnLable);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(

          onPressed: handleClick, child: Text(btnLable)),
    );
  }
}
