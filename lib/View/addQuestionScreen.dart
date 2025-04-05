import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddQuestionScreen extends StatelessWidget {
  AddQuestionScreen({super.key});
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
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
Padding(
              padding: const EdgeInsets.all(20.0),
              child: 
                  TextField(
                  onChanged: (value) {},
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Add question',
                    //suffixIcon: Icon(Icons.question_answer),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
