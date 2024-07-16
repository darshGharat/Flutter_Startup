
import 'package:adv_basic/custom_widget/show_question_index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: summary.map((item) {
              return SizedBox(
                width: 500,
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      ShowQuestionIndex(item: item,),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  item['question'] as String,
                                  style: GoogleFonts.lato(
                                      color: const Color.fromARGB(213, 219, 134, 230),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  item['answer'] as String,
                                  style: GoogleFonts.lato(
                                      color: const Color.fromARGB(245, 201, 102, 220),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  item['selected_answer'] as String,
                                  style: GoogleFonts.lato(
                                      color: const Color.fromARGB(255, 119, 95, 218),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                )
                              ]),
                        ),
                      ]),
                ]),
              );
            }).toList()),
      ),
    );
  }
}
