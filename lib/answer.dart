import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        textTheme: ButtonTextTheme.primary,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        color: Colors.yellow,
        onPressed: selectHandler,
      ),
    );
  }
}
