import 'dart:math';

class RandomAnswer {
  List<String> answers = [
    "Yes, definitely",
    "No way",
    "Literally...impossible",
    "Maybe, I dunno?",
    "For sure, mate",
    "No.",
    "Idk",
    "Why are you asking me?"
  ];

  String _randomAnswer = "...";

  final int numberOfAnswers;
  final Random random = Random();
  int _currentValue = 0;

  RandomAnswer({this.numberOfAnswers = 8});

  String get randomAnswer => _randomAnswer;

  void selectRandom() {
    _currentValue = random.nextInt(numberOfAnswers) + 1;
    _randomAnswer = answers[_currentValue];
  }
}
