import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;
  Result(this.totalScore, this.resetHandler);
  String get textPhrase {
    var resultText;
    if (totalScore <= 8)
      resultText = 'You are awesome and Innocent !';
    else if (totalScore <= 12)
      resultText = 'Pretty likeable !';
    else if (totalScore <= 16)
      resultText = 'You are .... strange?';
    else
      resultText = 'You are so bad !';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Text(
              textPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Play Again !',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.yellow),
              ))
        ],
      ),
    );
  }
}
