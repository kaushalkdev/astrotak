import 'package:astrotak/src/core/configs/configs.dart';
import 'package:astrotak/src/core/services/http/http_service.dart';
import 'package:astrotak/src/core/services/http/impls/dio_http_service.dart';
import 'package:astrotak/src/features/ask_questions/data/repo_impls/ask_question_repo_impl_v1.dart';
import 'package:astrotak/src/features/ask_questions/data/source/remote/remote_source.dart'
    as ask_question;
import 'package:astrotak/src/features/ask_questions/domain/repo/ask_question_repo.dart';
import 'package:astrotak/src/features/ask_questions/domain/use_cases/ask_question_use_case.dart';
import 'package:astrotak/src/features/relatives/data/repo_impls/relatives_impl.dart';
import 'package:astrotak/src/features/relatives/data/sources/remote/remote_source.dart'
    as relatives;
import 'package:astrotak/src/features/relatives/domain/repos/relatives_repo.dart';

import 'package:astrotak/src/features/relatives/domain/use_cases/relatives_use_case.dart';
import 'package:astrotak/src/features/relatives/exports.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLocator() {
  // init dio
  getIt.registerLazySingleton<Dio>(
      () => Dio(BaseOptions(baseUrl: Configs.i!.baseUrl)));
  // instantiating Http service
  getIt.registerLazySingleton<HttpService>(
      () => DioHttpService(getIt.get<Dio>()));

//-------------------- Ask Question---------------------------

// remote source init
  getIt.registerLazySingleton<ask_question.RemoteSource>(
      () => ask_question.RemoteSourceImplv1(getIt.get<HttpService>()));

// repo init
  getIt.registerLazySingleton<AskQuestionRepo>(
      () => AskQuestionRepoImplv1(getIt.get<ask_question.RemoteSource>()));

// usecase init
  getIt.registerFactory<AskQuestionUseCase>(
      () => AskQuestionUseCase(getIt.get<AskQuestionRepo>()));

//-------------------- Relatives ---------------------------

// remote source init
  getIt.registerFactory<relatives.RemoteSource>(
      () => relatives.RemoteSourceImplv1(getIt.get<HttpService>()));

  // realative repo init
  getIt.registerFactory<RelativesRepo>(
      () => RelativeRepoImpl(getIt.get<relatives.RemoteSource>()));

  // use case init
  getIt.registerFactory<RelativesUserCase>(
      () => RelativesUserCase(getIt.get<RelativesRepo>()));
}
