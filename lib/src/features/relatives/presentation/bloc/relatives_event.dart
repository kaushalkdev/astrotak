part of 'relatives_bloc.dart';

@freezed
class RelativesEvent with _$RelativesEvent {
  const factory RelativesEvent.getRelatives() = _GetRelatives;
  const factory RelativesEvent.updateRelative() = _UpdateReltive;
  const factory RelativesEvent.addRelatives() = _AddRelative;
  const factory RelativesEvent.deleteRelatives() = _DeleteRelative;
  const factory RelativesEvent.getLocation() = _GetLocation;
}
