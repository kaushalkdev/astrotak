import 'package:astrotak/src/features/ask_questions/domain/enitites/question_entity.dart';

class QuestionModel extends QuestionEntity {
  QuestionModel({
    required int id,
    required String name,
    required String description,
    required int price,
    required List<String> suggestions,
  }) : super(
            id: id,
            name: name,
            description: description,
            price: price,
            suggestions: suggestions);

  static QuestionModel fromJson(Map<String, dynamic> json) {
    return QuestionModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        price: json['price'],
        suggestions: json['suggestions'].cast<String>());
  }
}
