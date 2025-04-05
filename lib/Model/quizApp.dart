class QuiAppModel {
  String question;
  List<Answer> answer;
  QuiAppModel({
    required this.question,
    required this.answer,
  });
}

class Answer {
  String answer;
  bool isCorrect;
  Answer({
    required this.answer,
    required this.isCorrect,
  });
}


