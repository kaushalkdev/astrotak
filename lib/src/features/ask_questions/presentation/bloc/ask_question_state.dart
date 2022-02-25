part of 'ask_question_bloc.dart';

@freezed
class AskQuestionState with _$AskQuestionState {
  const factory AskQuestionState.initial() = _Initial;
  const factory AskQuestionState.categoryLoaded(List<String> category) =
      CategoryLoaded;

  const factory AskQuestionState.categorySelected(
      QuestionEntity selectedCategory) = SelectedCategory;

  const factory AskQuestionState.questionSelected(String question) =
      SelectedQuestion;
  const factory AskQuestionState.error(String message) = Error;
}
