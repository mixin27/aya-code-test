import 'dart:developer';

import 'package:flutter/material.dart';

class QuestionTwoAnswerPage extends StatelessWidget {
  const QuestionTwoAnswerPage({super.key, required this.result});

  final Map<String, List<String>> result;

  @override
  Widget build(BuildContext context) {
    final data = result.entries.map((entry) {
      return entry.value.join(',');
    }).toList();
    log("QuestionTwoAnswer: ${data.toList()}");

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: result.entries.map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('- ${entry.value.join(',')}'),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
