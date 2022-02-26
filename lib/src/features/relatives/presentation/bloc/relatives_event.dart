part of 'relatives_bloc.dart';

@freezed
class RelativesEvent with _$RelativesEvent {
  const factory RelativesEvent.getRelatives() = GetRelatives;
  const factory RelativesEvent.updateRelative(Relative relative) =
      UpdateReltive;
  const factory RelativesEvent.addRelatives(Relative relative) = AddRelative;
  const factory RelativesEvent.deleteRelatives(String uuid) = DeleteRelative;
  const factory RelativesEvent.getLocation(String location) = GetLocation;
}
