import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/core/models/result.dart';
import '../enitites/question_entity.dart';
import '../repo/ask_question_repo.dart';

class AskQuestionUseCase {
  final AskQuestionRepo _repo;

  AskQuestionUseCase(this._repo);

  Future<Result<AppError, List<String>>> getCategories() {
    return _repo.getCategories();
  }

  Future<Result<AppError, List<QuestionEntity>>> getIdeasToQuestion(
      String category) {
    return _repo.getIdeasToQuestion(category);
  }

  Future<Result<AppError, String>> askQuestion(String question) {
    return _repo.askQuestion(question);
  }
}
