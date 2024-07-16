
import 'package:adv_basic/screen/data/questions.dart';
import 'package:adv_basic/screen/questions_screen.dart';
import 'package:adv_basic/screen/results_screen.dart';
import 'package:adv_basic/screen/start_screen.dart';
import 'package:flutter/material.dart';

class QuizClass extends StatefulWidget {
  const QuizClass({super.key});

  @override
  State<QuizClass> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizClass> {
  var activeScreen = 'start-screen';

   List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void storeSelectedAns(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget openClass = StartScreen(switchScreen);
    if (activeScreen == 'start-screen') {
      openClass =  StartScreen(switchScreen);
    } else if (activeScreen == 'questions-screen') {
      openClass =  QuestionsScreen(
        onAnswerClicked: storeSelectedAns,
      );
    } else {
      openClass =  ResultsScreen(selectedAnswers,switchScreen);
    }
    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Color.fromARGB(255, 53, 5, 62)])),
          child: openClass),
    ));
  }
}
