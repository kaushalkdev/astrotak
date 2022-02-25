class QuestionEntity {
  int id;
  String name;
  String description;
  num price;
  List<String> suggestions;

  QuestionEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.suggestions,
  });
}
