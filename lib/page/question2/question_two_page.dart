import 'package:aya_code_test/page/question2/question_two_answer_page.dart';
import 'package:flutter/material.dart';

class QuestionTwoPage extends StatefulWidget {
  const QuestionTwoPage({super.key});

  @override
  State<QuestionTwoPage> createState() => _QuestionTwoPageState();
}

class _QuestionTwoPageState extends State<QuestionTwoPage> {
  final List<String> wordlist = [
    'AMOR',
    'XISELA',
    'JAMON',
    'ROMA',
    'OMAR',
    'MORA',
    'ESPONJA',
    'RAMO',
    'JAPONES',
    'ARMO',
    'MOJAN',
    'MARO',
    'ORAM',
    'MONJA',
    'ALEXIS'
  ];

  Map<String, List<String>> groupdWord() {
    final Map<String, List<String>> grouped = {};

    for (var word in wordlist) {
      final sorted = String.fromCharCodes(word.runes.toList()..sort());

      if (grouped.containsKey(sorted)) {
        grouped[sorted]!.add(word);
      } else {
        grouped[sorted] = [word];
      }
    }

    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(wordlist.toString()),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {
              final groupedWord = groupdWord();

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return QuestionTwoAnswerPage(result: groupedWord);
                }),
              );
            },
            child: const Text("Result"),
          ),
        ],
      ),
    );
  }
}
