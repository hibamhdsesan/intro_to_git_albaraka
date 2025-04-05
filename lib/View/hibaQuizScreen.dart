import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class hibaQuizScreen extends StatelessWidget {
  hibaQuizScreen({super.key});
  TextEditingController question = TextEditingController();
  TextEditingController answer1 = TextEditingController();
  TextEditingController answer2 = TextEditingController();
  TextEditingController answer3 = TextEditingController();
  TextEditingController answer4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xffff8d376f),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFDA88D9),
                    Color(0xFFF3BD6B)
                  ], // استبدل بالألوان المطلوبة
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("Question")),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                   return Column(
                     children: [
                       AnswersContainers(
                          content: "jhbvgc",
                        ),

                         SizedBox(height: 8,),
                     ],
                   );
                   
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class AnswersContainers extends StatelessWidget {
  AnswersContainers({super.key, required this.content});
  String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(content)),
    );
  }
}
