import 'package:flutter/material.dart';

class QuestionOneAnswerPage extends StatelessWidget {
  const QuestionOneAnswerPage({super.key, required this.result});

  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(result),
      ),
    );
  }
}
