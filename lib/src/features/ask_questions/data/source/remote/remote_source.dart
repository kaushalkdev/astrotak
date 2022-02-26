import 'dart:io';

import 'package:astrotak/src/core/apis/app_apis.dart';
import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/core/services/http/http_service.dart';
import 'package:astrotak/src/features/ask_questions/data/models/question_model.dart';
import 'package:astrotak/src/features/ask_questions/domain/enitites/question_entity.dart';
import 'package:dio/dio.dart';

abstract class RemoteSource {
  Future<Result<AppError, List<String>>> getCategories();
  Future<Result<AppError, QuestionEntity>> getIdeasToQuestion(String category);
  Future<Result<AppError, String>> askQuestion(String question);
}

class RemoteSourceImplv1 implements RemoteSource {
  final HttpService _httpService;
  final Map<String, dynamic> _questionData = <String, dynamic>{};
  RemoteSourceImplv1(this._httpService);

  @override
  Future<Result<AppError, String>> askQuestion(String question) async {
    throw UnimplementedError();
  }

  @override
  Future<Result<AppError, List<String>>> getCategories() async {
    List<String> _categories = [];
    try {
      var _response = await _httpService.getRequest(AppApis.allQuestions);
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        _questionData['data'] = _response.data['data'];

        for (var element in (_questionData['data'] as List)) {
          var _model = QuestionModel.fromJson(element);

          if (_model.suggestions.isNotEmpty) {
            _categories.add(_model.name);
          }
        }
        return Result.success(_categories);
      } else {
        return Result.failure(AppError(
            message: 'Error Occored', code: _response.data['httpStatusCode']));
      }
    } on SocketException {
      return Result.failure(AppError(message: 'Please Check Internet'));
    } on DioError catch (e) {
      return Result.failure(AppError(message: 'Error Occored ${e.message}'));
    } catch (e) {
      return Result.failure(AppError(message: 'Unknown error ${e.toString()}'));
    }
  }

  @override
  Future<Result<AppError, QuestionEntity>> getIdeasToQuestion(
      String category) async {
    QuestionModel? _question;
    try {
      for (var element in (_questionData['data'] as List)) {
        if (element['name'] == category.trim()) {
          _question = QuestionModel.fromJson(element);
        }
      }
      if (_question != null) {
        return Result.success(_question);
      } else {
        return Result.failure(AppError(message: 'No ideas found'));
      }
    } on SocketException {
      return Result.failure(AppError(message: 'Please Check Internet'));
    } on DioError catch (e) {
      return Result.failure(AppError(message: 'Error Occored ${e.message}'));
    } catch (e) {
      return Result.failure(AppError(message: 'Unknown error ${e.toString()}'));
    }
  }
}
