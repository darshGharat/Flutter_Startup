import 'package:adv_basic/custom_widget/answer_button.dart';
import 'package:adv_basic/screen/data/questions.dart';
import 'package:adv_basic/screen/models/quiz_questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onAnswerClicked});

  final void Function(String answer) onAnswerClicked;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentIndex = 0;

  void onAnswerClicked(String selectedAnswers) {
    widget.onAnswerClicked(selectedAnswers);
    setState(() {
      if (currentIndex != questions.length - 1) currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestions currentQuestion = questions[currentIndex];

    return SizedBox(
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.question,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                ...currentQuestion.getShuffeledList().map((item) {
                  return AnswerButton(item, () {
                    onAnswerClicked(item);
                  });
                })
              ],
            )));
  }
}
