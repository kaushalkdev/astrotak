import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/features/ask_questions/domain/enitites/question_entity.dart';

abstract class AskQuestionRepo {
  Future<Result<AppError, List<String>>> getCategories();
  Future<Result<AppError, QuestionEntity>> getIdeasToQuestion(String category);
  Future<Result<AppError, String>> askQuestion(String question);
}
