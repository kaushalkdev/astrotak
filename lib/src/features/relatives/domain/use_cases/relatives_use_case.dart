import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/features/relatives/domain/entities/location.dart';
import 'package:astrotak/src/features/relatives/domain/entities/relative.dart';
import 'package:astrotak/src/features/relatives/domain/repos/relatives_repo.dart';

class RelativesUserCase {
  final RelativesRepo _repo;

  RelativesUserCase(this._repo);

  Future<Result<AppError, List<Relative>>> getAll() {
    return _repo.getAll();
  }

  Future<Result<AppError, bool>> add(Relative relative) {
    return _repo.add(relative);
  }

  Future<Result<AppError, bool>> update(Relative relative) {
    return _repo.update(relative);
  }

  Future<Result<AppError, bool>> delete(String uuid) {
    return _repo.delete(uuid);
  }

  Future<Result<AppError, List<Location>>> getLocation(String location) {
    return _repo.getLocation(location);
  }
}
