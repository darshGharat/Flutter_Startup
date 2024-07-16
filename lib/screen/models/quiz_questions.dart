class QuizQuestions {
  const QuizQuestions(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffeledList(){
    var shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
