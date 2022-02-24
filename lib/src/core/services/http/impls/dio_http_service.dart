import 'package:astrotak/src/core/constants/app_strings.dart';

import '../http_service.dart';
import 'package:dio/dio.dart';

class DioHttpService implements HttpService {
  final Dio _dio;
  DioHttpService(this._dio);
  @override
  Future<Response> getRequest(String path) {
    return _dio.get(path);
  }

  @override
  Future<Response> getRequestWithOptions(String path) {
    return _dio.get(path,
        options: Options(headers: {AppString.authorization: _getToken}));
  }

  ///
  /// mimics generating token
  ///
  String get _getToken => AppString.bearer + AppString.token;

  @override
  Future<Response> postRequestWithOptions(
      String path, Map<String, dynamic> data) {
    return _dio.post(path,
        data: data,
        options: Options(headers: {AppString.authorization: _getToken}));
  }
}
