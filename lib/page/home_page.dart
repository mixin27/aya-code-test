import 'package:aya_code_test/page/question1/question_one_page.dart';
import 'package:aya_code_test/page/question2/question_two_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FilledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const QuestionOnePage();
                }),
              );
            },
            child: const Text("Question One"),
          ),
          FilledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const QuestionTwoPage();
                }),
              );
            },
            child: const Text("Question One"),
          ),
        ],
      ),
    );
  }
}
