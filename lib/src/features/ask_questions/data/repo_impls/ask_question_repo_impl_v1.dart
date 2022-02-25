import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/features/ask_questions/data/source/remote/remote_source.dart';
import 'package:astrotak/src/features/ask_questions/domain/enitites/question_entity.dart';
import 'package:astrotak/src/features/ask_questions/domain/repo/ask_question_repo.dart';

class AskQuestionRepoImplv1 implements AskQuestionRepo {
  final RemoteSource _remoteSource;

  AskQuestionRepoImplv1(this._remoteSource);

  @override
  Future<Result<AppError, String>> askQuestion(String question) {
    return _remoteSource.askQuestion(question);
  }

  @override
  Future<Result<AppError, List<String>>> getCategories() {
    return _remoteSource.getCategories();
  }

  @override
  Future<Result<AppError, QuestionEntity>> getIdeasToQuestion(String category) {
    return _remoteSource.getIdeasToQuestion(category);
  }
}
