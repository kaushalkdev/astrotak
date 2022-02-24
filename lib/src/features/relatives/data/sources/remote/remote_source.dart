import 'package:astrotak/src/core/apis/app_apis.dart';
import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/core/services/http/http_service.dart';
import 'package:astrotak/src/features/relatives/data/models/location_model.dart';
import 'package:astrotak/src/features/relatives/data/models/relative_model.dart';

abstract class RemoteSource {
  Future<Result<AppError, List<RelativeModel>>> getAll();
  Future<Result<AppError, void>> add(RelativeModel relativeModel);
  Future<Result<AppError, void>> update(RelativeModel relativeModel);
  Future<Result<AppError, void>> delete(String uuid);
  Future<Result<AppError, List<LocationModel>>> getLocation(String location);
}

class RemoteSourceImplv1 implements RemoteSource {
  final HttpService _httpService;

  RemoteSourceImplv1(this._httpService);
  @override
  Future<Result<AppError, void>> add(RelativeModel relativeModel) async {
    try {
      var _response = await _httpService.postRequestWithOptions(
          AppApis.addRelative, relativeModel.toJson());
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        return Result.success();
      } else {
        return Result.failure(AppError(
            message: 'Error Occored', code: _response.data['httpStatusCode']));
      }
    } catch (e) {
      return Result.failure(AppError(message: 'Error Occored ${e.toString()}'));
    }
  }

  @override
  Future<Result<AppError, void>> delete(String uuid) async {
    try {
      var _response =
          await _httpService.postRequestWithOptions(AppApis.deleteRelative, {});
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        return Result.success();
      } else {
        return Result.failure(AppError(
            message: 'Error Occored', code: _response.data['httpStatusCode']));
      }
    } catch (e) {
      return Result.failure(AppError(message: 'Error Occored ${e.toString()}'));
    }
  }

  @override
  Future<Result<AppError, List<RelativeModel>>> getAll() async {
    try {
      var _response =
          await _httpService.getRequestWithOptions(AppApis.allRelatives);
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        return Result.success();
      } else {
        return Result.failure(AppError(
            message: 'Error Occored', code: _response.data['httpStatusCode']));
      }
    } catch (e) {
      return Result.failure(AppError(message: 'Error Occored ${e.toString()}'));
    }
  }

  @override
  Future<Result<AppError, void>> update(RelativeModel relativeModel) async {
    try {
      var _response = await _httpService.postRequestWithOptions(
          AppApis.deleteRelative, relativeModel.toJson());
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        return Result.success();
      } else {
        return Result.failure(AppError(
            message: 'Error Occored', code: _response.data['httpStatusCode']));
      }
    } catch (e) {
      return Result.failure(AppError(message: 'Error Occored ${e.toString()}'));
    }
  }

  @override
  Future<Result<AppError, List<LocationModel>>> getLocation(
      String location) async {
    List<LocationModel> _locations = [];
    try {
      var _response = await _httpService.getRequest(AppApis.location);
      if (_response.data != null && _response.data['httpStatusCode'] == 200) {
        for (var location
            in (_response.data['data'] as List<Map<String, dynamic>>)) {
          _locations.add(LocationModel.fromJson(location));
        }
        return Result.success(_locations);
      } else {
        return Result.failure(AppError(
            message: 'Error Occored', code: _response.data['httpStatusCode']));
      }
    } catch (e) {
      return Result.failure(AppError(message: 'Error Occored ${e.toString()}'));
    }
  }
}
