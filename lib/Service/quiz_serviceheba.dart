import 'package:dio/dio.dart';
import '../Model/quiz_modelheba.dart';

class QuizService {
  Dio dio = Dio();
  late Response response;
  String baseUrl = "https://676bde06bc36a202bb85fc11.mockapi.io/Quiz/";

  Future<QuizModel?> getOneQuiz(String id) async {
    try {
      response = await dio.get(baseUrl + id);
      QuizModel quiz = QuizModel.fromMap(response.data);
      return quiz;
      print(quiz);
    } catch (e) {
      return null;
    }
  }

  Future<List<QuizModel>> getAllQuiz() async {
    try {
      response = await dio.get(baseUrl);
      List<dynamic> data = response.data;
      List<QuizModel> quizzes = data.map((e) => QuizModel.fromMap(e)).toList();
      return quizzes;

    // List<dynamic> data = response.data;
    // List<QuizModel> quizzes = [];

    // for (var item in data) {
    //   quizzes.add(QuizModel.fromMap(item));
    // }

    // return quizzes;
    } catch (e) {
      return [];
    }
  }
}
