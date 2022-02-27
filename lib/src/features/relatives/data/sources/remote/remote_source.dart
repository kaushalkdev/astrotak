import 'dart:io';

import 'package:astrotak/src/core/apis/app_apis.dart';
import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/core/services/http/http_service.dart';
import 'package:astrotak/src/features/relatives/data/models/location_model.dart';
import 'package:astrotak/src/features/relatives/data/models/relative_model.dart';
import 'package:dio/dio.dart';

abstract class RemoteSource {
  Future<Result<AppError, List<RelativeModel>>> getAll();
  Future<Result<AppError, bool>> add(RelativeModel relativeModel);
  Future<Result<AppError, bool>> update(RelativeModel relativeModel);
  Future<Result<AppError, bool>> delete(String uuid);
  Future<Result<AppError, List<LocationModel>>> getLocation(String location);
}

class RemoteSourceImplv1 implements RemoteSource {
  final HttpService _httpService;

  RemoteSourceImplv1(this._httpService);
  @override
  Future<Result<AppError, bool>> add(RelativeModel relativeModel) async {
    try {
      var _response = await _httpService.postRequestWithOptions(
          AppApis.addRelative, relativeModel.toJson());
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        return Result.success(true);
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
  Future<Result<AppError, bool>> delete(String uuid) async {
    try {
      var _response = await _httpService
          .postRequestWithOptions(AppApis.deleteRelative + '/$uuid', {});
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        return Result.success(true);
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
  Future<Result<AppError, List<RelativeModel>>> getAll() async {
    List<RelativeModel> _relatives = [];
    try {
      var _response =
          await _httpService.getRequestWithOptions(AppApis.allRelatives);
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        // checking if there are any reletavies in data
        if (_response.data.containsKey('data')) {
          for (var element
              in (_response.data['data']['allRelatives'] as List)) {
            _relatives.add(RelativeModel.fromJson(element));
          }
        }

        return Result.success(_relatives);
      } else {
        return Result.failure(AppError(
            message: 'Error Occored', code: _response.data['httpStatusCode']));
      }
    } on SocketException {
      return Result.failure(AppError(message: 'Please Check Internet'));
    } on DioError catch (e) {
      if (e is SocketException) {}
      return Result.failure(AppError(message: 'Error Occored ${e.message}'));
    } catch (e) {
      return Result.failure(AppError(message: 'Unknown error ${e.toString()}'));
    }
  }

  @override
  Future<Result<AppError, bool>> update(RelativeModel relativeModel) async {
    try {
      var _response = await _httpService.postRequestWithOptions(
          AppApis.updateRelative + '/${relativeModel.uuid}',
          relativeModel.toJson());
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        return Result.success(true);
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
  Future<Result<AppError, List<LocationModel>>> getLocation(
      String location) async {
    List<LocationModel> _locations = [];
    try {
      var _response =
          await _httpService.getRequest(AppApis.location + location);
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        if ((_response.data as Map).containsKey('data')) {
          for (var location in (_response.data['data'] as List)) {
            _locations.add(LocationModel.fromJson(location));
          }
        }

        return Result.success(_locations);
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
}
