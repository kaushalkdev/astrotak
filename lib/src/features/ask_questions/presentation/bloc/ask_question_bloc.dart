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
      // fetching data from repo
      if (event is FetchCategory) {
        var response = await _useCase.getCategories();
        response.when(success: (list) async {
          // instantiating selected list
          selectedCategory = list!.first;
          emit(CategoryLoaded(list));
        }, failure: (e) {
          emit(Error(e!.message));
        });
      }
      // if a new category is selected
      else if (event is SelectCategory) {
        // updating seleted category
        selectedCategory = event.category;

        // getting questions from the repo
        var _response = await _useCase.getIdeasToQuestion(event.category);

        _response.when(
          failure: (e) => emit(Error(e!.message)),
          success: (p0) => emit(SelectedCategory(p0!)),
        );
      }
    });
  }
}
