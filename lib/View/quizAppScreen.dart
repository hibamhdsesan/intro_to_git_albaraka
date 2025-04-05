import 'package:flutter/material.dart';
import '../Model/quizApp.dart';

class QuizAppScreen extends StatelessWidget {
  QuizAppScreen({super.key});
  PageController _pageController = PageController();

  List<QuiAppModel> questions = [
    QuiAppModel(question: "How old are you?", answer: [
      Answer(answer: "22", isCorrect: false),
      Answer(answer: "23", isCorrect: true),
      Answer(answer: "24", isCorrect: false),
      Answer(answer: "25", isCorrect: false),
    ]),
    QuiAppModel(question: "Where do you live?", answer: [
      Answer(answer: "Australia", isCorrect: false),
      Answer(answer: "Paris", isCorrect: false),
      Answer(answer: "Damascus", isCorrect: true),
      Answer(answer: "Lebanon", isCorrect: false),
    ]),
    QuiAppModel(question: "What is your favorite color?", answer: [
      Answer(answer: "Blue", isCorrect: true),
      Answer(answer: "Red", isCorrect: false),
      Answer(answer: "Yellow", isCorrect: false),
      Answer(answer: "Black", isCorrect: false),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz App",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: questions.length,
        itemBuilder: (context, questionIndex) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    questions[questionIndex].question,
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: GridView.builder(
                    itemCount: questions[questionIndex].answer.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemBuilder: (context, answerIndex) {
                      return Material(
                        color: Color.fromARGB(255, 240, 220, 227), // ✅
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            bool isCorrect = questions[questionIndex]
                                .answer[answerIndex]
                                .isCorrect;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  isCorrect
                                      ? " True Answer"
                                      : " Wrong Answer",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor:
                                    isCorrect ? Colors.green : Colors.red,
                                duration: Duration(seconds: 1),
                              ),
                              
                            );
                             Future.delayed(Duration(milliseconds: 700), () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                           
                          });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              questions[questionIndex]
                                  .answer[answerIndex]
                                  .answer,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
