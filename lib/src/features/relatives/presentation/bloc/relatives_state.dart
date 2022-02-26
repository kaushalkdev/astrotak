part of 'relatives_bloc.dart';

@freezed
class RelativesState with _$RelativesState {
  const factory RelativesState.initial() = _Initial;
  const factory RelativesState.relativesLoaded(List<Relative> relatives) =
      RelativesLoaded;
  const factory RelativesState.relativeUpdated() = RelativeUpdated;
  const factory RelativesState.relativeAdded() = RelativeAdded;
  const factory RelativesState.relativeDeleted() = RelativeDeleted;
  const factory RelativesState.loationLoaded(List<Location> locations) =
      LoationLoaded;
  const factory RelativesState.error(String message) = Error;
}
