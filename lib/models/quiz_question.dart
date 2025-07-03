class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  
  final String text;
  final List<String> answers;

  List<String> getShuffleAnswers() {
    final shuffleAnsers = List.of(answers);
    shuffleAnsers.shuffle();
    return shuffleAnsers;
  }
}