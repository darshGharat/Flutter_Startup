import 'package:adv_basic/custom_widget/question_summary.dart';
import 'package:adv_basic/screen/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.switchScreen, {super.key});

  final List<String> selectedAnswers;
  final void Function() switchScreen;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'answer': questions[i].answers[0],
        'selected_answer': selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final correctAnswerCount = summaryData.where((item) {
      return item['answer'] == item['selected_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answered $correctAnswerCount out of $totalQuestions answers correctly!',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              QuestionSummary(summaryData),
              const SizedBox(
                height: 20,
              ),
              TextButton.icon(
                  onPressed: () => switchScreen(),
                  icon: const Icon(Icons.replay, color: Colors.white),
                  label: const Text(
                    'Re-start Quiz',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          )),
    );
  }
}
