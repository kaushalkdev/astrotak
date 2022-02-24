import 'package:dio/dio.dart';

abstract class HttpService {
  // requests without options
  Future<Response> getRequest(String path);

  // requests with options
  Future<Response> getRequestWithOptions(String path);
  Future<Response> postRequestWithOptions(
      String path, Map<String, dynamic> data);
}
