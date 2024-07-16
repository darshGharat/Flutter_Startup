
import 'package:flutter/material.dart';

class ShowQuestionIndex extends StatelessWidget{
  const ShowQuestionIndex({super.key, required this.item});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = item['selected_answer'] == item['answer'];

    return DecoratedBox(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 206, 120, 211)
              : const Color.fromARGB(255, 87, 115, 157)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(((item['question_index'] as int) + 1).toString()),
      ),
    );
  }
}