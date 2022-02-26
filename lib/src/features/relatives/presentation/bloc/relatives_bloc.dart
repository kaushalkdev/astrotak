import 'package:astrotak/src/features/relatives/domain/entities/location.dart';
import 'package:astrotak/src/features/relatives/domain/entities/relative.dart';
import 'package:astrotak/src/features/relatives/domain/use_cases/relatives_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relatives_event.dart';
part 'relatives_state.dart';
part 'relatives_bloc.freezed.dart';

class RelativesBloc extends Bloc<RelativesEvent, RelativesState> {
  final RelativesUserCase _userCase;
  RelativesBloc(this._userCase) : super(const Initial()) {
    on<RelativesEvent>((event, emit) async {
      // getting initial value of realtives
      if (event is GetRelatives) {
        emit(const Initial());
        var _getRelResp = await _userCase.getAll();

        _getRelResp.when(
          failure: (e) {
            emit(Error(e!.message));
          },
          success: (relatives) {
            emit(RelativesLoaded(relatives!));
          },
        );
      }

      // adding a relative
      else if (event is AddRelative) {
        var _addResp = await _userCase.add(event.relative);

        _addResp.when(
          failure: (e) {
            emit(Error(e!.message));
          },
          success: (_) {
            emit(const RelativeAdded());
          },
        );
      }

      // updateing a relative
      else if (event is UpdateReltive) {
        var _updateResp = await _userCase.update(event.relative);

        _updateResp.when(
          failure: (e) {
            emit(Error(e!.message));
          },
          success: (_) {
            emit(const RelativeUpdated());
          },
        );
      }

      // deleting a relative
      else if (event is DeleteRelative) {
        emit(const Initial());
        var _delResp = await _userCase.delete(event.uuid);

        _delResp.when(
          success: (_) {
            emit(const RelativeDeleted());
          },
          failure: (e) {
            emit(Error(e!.message));
          },
        );
      }

      // getting locations for a particular entry
      else if (event is GetLocation) {
        var _getLocResp = await _userCase.getLocation(event.location);
        _getLocResp.when(
          failure: (e) {
            emit(Error(e!.message));
          },
          success: (locs) {
            emit(LoationLoaded(locs!));
          },
        );
      }
      // some uknown event
      else {
        emit(const Error('Unknown Event'));
      }
    });
  }
}
