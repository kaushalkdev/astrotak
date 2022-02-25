part of 'relatives_bloc.dart';

@freezed
class RelativesState with _$RelativesState {
  const factory RelativesState.initial() = _Initial;
  const factory RelativesState.relativesLoaded() = _RelativesLoaded;
  const factory RelativesState.relativeUpdated() = _RelativeUpdated;
  const factory RelativesState.relativeAdded() = _RelativeAdded;
  const factory RelativesState.relativeDeleted() = _RelativeDeleted;
  const factory RelativesState.loationLoaded() = _LoationLoaded;
}
