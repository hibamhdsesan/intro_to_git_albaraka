import 'dart:convert';

import 'package:flutter/foundation.dart';

class QuizModel {
  String quistionText;
  List<Options> options;
  QuizModel({
    required this.quistionText,
    required this.options,
  });

  QuizModel copyWith({
    String? quistionText,
    List<Options>? options,
  }) {
    return QuizModel(
      quistionText: quistionText ?? this.quistionText,
      options: options ?? this.options,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quistionText': quistionText,
      'options': options.map((x) => x.toMap()).toList(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      quistionText: map['quistionText'] ?? '',
      options: List<Options>.from(map['options']?.map((x) => Options.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));

  @override
  String toString() => 'QuizModel(quistionText: $quistionText, options: $options)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is QuizModel &&
      other.quistionText == quistionText &&
      listEquals(other.options, options);
  }

  @override
  int get hashCode => quistionText.hashCode ^ options.hashCode;
}

class Options {
  String answerText;
  bool isCorrect;
  Options({
    required this.answerText,
    required this.isCorrect,
  });

  Options copyWith({
    String? answerText,
    bool? isCorrect,
  }) {
    return Options(
      answerText: answerText ?? this.answerText,
      isCorrect: isCorrect ?? this.isCorrect,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'answerText': answerText,
      'isCorrect': isCorrect,
    };
  }

  factory Options.fromMap(Map<String, dynamic> map) {
    return Options(
      answerText: map['answerText'] ?? '',
      isCorrect: map['isCorrect'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Options.fromJson(String source) => Options.fromMap(json.decode(source));

  @override
  String toString() => 'Options(answerText: $answerText, isCorrect: $isCorrect)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Options &&
      other.answerText == answerText &&
      other.isCorrect == isCorrect;
  }

  @override
  int get hashCode => answerText.hashCode ^ isCorrect.hashCode;
}
