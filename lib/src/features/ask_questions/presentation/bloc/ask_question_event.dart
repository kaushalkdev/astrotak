part of 'ask_question_bloc.dart';

@freezed
class AskQuestionEvent with _$AskQuestionEvent {
  const factory AskQuestionEvent.fetchCategory() = FetchCategory;
  const factory AskQuestionEvent.selectCategory(String category) =
      SelectCategory;

  const factory AskQuestionEvent.selectQuestion(String question) =
      SelectQuestion;
}
