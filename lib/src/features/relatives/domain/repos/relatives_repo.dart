import 'package:astrotak/src/core/errors/app_errors.dart';
import 'package:astrotak/src/core/models/result.dart';
import 'package:astrotak/src/features/relatives/data/models/location_model.dart';
import 'package:astrotak/src/features/relatives/domain/entities/location.dart';
import 'package:astrotak/src/features/relatives/domain/entities/relative.dart';

abstract class RelativesRepo {
  ///
  /// gets all rleatives from data source
  ///
  /// returns [Future] of type `Result`.
  ///
  Future<Result<AppError, List<Relative>>> getAll();

  ///
  /// adds a relative to data source
  ///
  /// returns [Future] of type `Result`.
  ///
  Future<Result<AppError, void>> add(Relative relative);

  ///
  /// updates a relative to data source
  ///
  /// returns [Future] of type `Result`.
  ///
  Future<Result<AppError, void>> update(Relative relative);

  ///
  /// deletes a relative to data source
  ///
  /// returns [Future] of type `Result`.
  ///
  Future<Result<AppError, void>> delete(String uuid);

  ///
  /// gets a location from data source
  ///
  /// returns [Future] of type `Result`.
  ///
  Future<Result<AppError, List<Location>>> getLocation(String location);
}
