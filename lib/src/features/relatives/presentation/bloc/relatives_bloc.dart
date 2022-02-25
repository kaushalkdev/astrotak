import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relatives_event.dart';
part 'relatives_state.dart';
part 'relatives_bloc.freezed.dart';

class RelativesBloc extends Bloc<RelativesEvent, RelativesState> {
  RelativesBloc() : super(_Initial()) {
    on<RelativesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
