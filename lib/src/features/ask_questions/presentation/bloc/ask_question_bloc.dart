import 'package:astrotak/src/features/ask_questions/domain/enitites/question_entity.dart';
import 'package:astrotak/src/features/ask_questions/domain/use_cases/ask_question_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_question_event.dart';
part 'ask_question_state.dart';
part 'ask_question_bloc.freezed.dart';

class AskQuestionBloc extends Bloc<AskQuestionEvent, AskQuestionState> {
  final AskQuestionUseCase _useCase;
  String? selectedCategory;
  AskQuestionBloc(this._useCase) : super(const _Initial()) {
    on<AskQuestionEvent>((event, emit) async {
      if (event is FetchCategory) {
        var response = await _useCase.getCategories();
        response.when(success: (list) async {
          selectedCategory = list[0];
          emit(CategoryLoaded(list));
        }, failure: (e) {
          emit(Error(e.message));
        });
      } else if (event is SelectCategory) {
        selectedCategory = event.category;
        var _response = await _useCase.getIdeasToQuestion(event.category);

        _response.when(
          failure: (e) => emit(Error(e.message)),
          success: (p0) => emit(SelectedCategory(p0)),
        );
      }
    });
  }
}
