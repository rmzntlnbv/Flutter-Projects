import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int answerOption = 1;

  void changeAnswer() {
    setState(() {
      answerOption = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
            child: TextButton(
              onPressed: () {
                changeAnswer();
              },
              child: Image.asset('images/ball$answerOption.png'),
            ),
          ),
    );
  }
}