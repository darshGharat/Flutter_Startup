import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Text("Learn Flutter the fun way!",
        style:
            TextStyle(color: Color.fromARGB(162, 255, 255, 255), fontSize: 16));
  }
}
