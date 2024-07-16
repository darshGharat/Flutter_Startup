

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.value, this.onTap, {super.key});

  final String value;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(0, 147, 133, 171),
          foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
      onPressed: () => onTap(),
      child: Text(
        value,
        style: GoogleFonts.lato(color: Colors.white),
      ),
    );
  }
}
