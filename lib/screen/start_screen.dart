import 'package:adv_basic/custom_widget/styled_text.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchToQuestion , {super.key});

  final void Function() switchToQuestion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
                opacity: 0.6,
                child: Image.asset(
                  "assets/images/quiz-logo.png",
                  alignment: Alignment.center,
                  width: 300,
                )),
            const SizedBox(
              height: 40,
            ),
            const StyledText(),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  switchToQuestion();
                },
                style: const ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(color: Colors.orange),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                label: const Text("Start Quiz",
                    style: TextStyle(
                      color: Color(0xFFEEEEEE),
                    )),
                icon: const Icon(
                  Icons.ac_unit_outlined,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
