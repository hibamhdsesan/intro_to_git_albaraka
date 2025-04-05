import 'dart:io';

import 'package:flutter/material.dart';

class OnBoardingPage2 extends StatelessWidget {
  OnBoardingPage2({super.key});
  final File file =
      File("C:/Users/lenovo/Downloads/TO-DO/mobile-note-list/cuate2.png");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
          ),

          //Image.file(file),
          Image.asset("assets/images/cuate2.png"),

          Text(
            "Stay Organized",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w900, color: Colors.black),
          ),

          Text(
            "Group your tasks and keep them organized",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.w200,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                width: 10,
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.circle,
                ),
                width: 10,
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                width: 10,
                height: 10,
              ),
            ],
          ),

          Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 147, 179, 204),
            ),
            width: 317,
            height: 54,
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
