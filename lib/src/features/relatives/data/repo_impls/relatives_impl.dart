import 'package:astrotak/src/features/relatives/data/models/relative_model.dart';
import 'package:astrotak/src/features/relatives/data/sources/remote/remote_source.dart';
import 'package:astrotak/src/features/relatives/domain/entities/location.dart';
import 'package:astrotak/src/features/relatives/domain/entities/relative.dart';
import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/features/relatives/domain/repos/relatives_repo.dart';

class RelativeRepoImpl implements RelativesRepo {
  final RemoteSource _remoteSource;

  RelativeRepoImpl(this._remoteSource);

  @override
  Future<Result<AppError, void>> add(Relative relative) {
    return _remoteSource.add(relative as RelativeModel);
  }

  @override
  Future<Result<AppError, void>> delete(String uuid) {
    return _remoteSource.delete(uuid);
  }

  @override
  Future<Result<AppError, List<Relative>>> getAll() {
    return _remoteSource.getAll();
  }

  @override
  Future<Result<AppError, void>> update(Relative relative) {
    return _remoteSource.update(relative as RelativeModel);
  }

  @override
  Future<Result<AppError, List<Location>>> getLocation(String location) {
    return _remoteSource.getLocation(location);
  }
}
