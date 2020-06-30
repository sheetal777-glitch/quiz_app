import 'package:flutter/material.dart';
import 'answers.dart';

QuestionAnswers questionAnswers = QuestionAnswers();
void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: MyQuizApp(),
        )),
      ),
    );
  }
}

class MyQuizApp extends StatefulWidget {
  @override
  _MyQuizAppState createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  String correctAnswers;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Flexible(
          flex: 5,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              questionAnswers.getQuestionText(),
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          )),
        ),
        Flexible(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              correctAnswers = questionAnswers.getQuestionAnswer3();
              if (correctAnswers == questionAnswers.getQuestionAnswer3()) {
                print('user got right');
              } else {
                print('user got wrong');
              }

              setState(() {
                questionAnswers.nextQuestionAnswer();
              });
            },
            child: Text(
              questionAnswers.getQuestionAnswer0(),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Flexible(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              setState(() {
                questionAnswers.nextQuestionAnswer();
              });
            },
            child: Text(
              questionAnswers.getQuestionAnswer1(),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Flexible(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              setState(() {
                questionAnswers.nextQuestionAnswer();
              });
            },
            child: Text(
              questionAnswers.getQuestionAnswer2(),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Flexible(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              setState(() {
                questionAnswers.nextQuestionAnswer();
              });
            },
            child: Text(
              questionAnswers.getQuestionAnswer3(),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
