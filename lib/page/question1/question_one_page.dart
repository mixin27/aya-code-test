import 'dart:developer';

import 'package:aya_code_test/page/question1/question_one_answer_page.dart';
import 'package:flutter/material.dart';

class QuestionOnePage extends StatefulWidget {
  const QuestionOnePage({super.key});

  @override
  State<QuestionOnePage> createState() => _QuestionOnePageState();
}

class _QuestionOnePageState extends State<QuestionOnePage> {
  final _controller = TextEditingController(text: '');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String transformString(String input) {
    var result = input;
    final pattern = RegExp(r'\(([^)]+)\)');

    result = result.replaceAllMapped(pattern, (match) {
      return match.group(1)!.split('').reversed.join('');
    });

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller: _controller,
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {
              final input = _controller.text;
              if (input.isEmpty) return;

              final result = transformString(input)
                  .replaceAll('(', '')
                  .replaceAll(")", "");

              log("QuestionInput: $input");
              log("QuestionOneResult: $result");

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return QuestionOneAnswerPage(result: result);
                }),
              );
            },
            child: const Text("Convert"),
          ),
        ],
      ),
    );
  }
}
