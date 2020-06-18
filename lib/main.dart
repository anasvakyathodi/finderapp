import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 6},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 1},
        {'text': 'Green', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 3},
        {'text': 'Lion', 'score': 6},
        {'text': 'Tiger', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favourite marvel character?',
      'answers': [
        {'text': 'Iron Man', 'score': 10},
        {'text': 'Captain', 'score': 1},
        {'text': 'Thor', 'score': 6},
        {'text': 'Hulk', 'score': 3}
      ],
    },
  ];
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _questionAnswered(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Center(
            child: Text(
              'Finder App',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                questionAnswered: _questionAnswered,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
