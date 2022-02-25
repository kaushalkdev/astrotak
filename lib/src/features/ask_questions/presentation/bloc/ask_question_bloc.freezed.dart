// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ask_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AskQuestionEventTearOff {
  const _$AskQuestionEventTearOff();

  FetchCategory fetchCategory() {
    return const FetchCategory();
  }

  SelectCategory selectCategory(String category) {
    return SelectCategory(
      category,
    );
  }

  SelectQuestion selectQuestion(String question) {
    return SelectQuestion(
      question,
    );
  }
}

/// @nodoc
const $AskQuestionEvent = _$AskQuestionEventTearOff();

/// @nodoc
mixin _$AskQuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategory,
    required TResult Function(String category) selectCategory,
    required TResult Function(String question) selectQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectQuestion value) selectQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskQuestionEventCopyWith<$Res> {
  factory $AskQuestionEventCopyWith(
          AskQuestionEvent value, $Res Function(AskQuestionEvent) then) =
      _$AskQuestionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AskQuestionEventCopyWithImpl<$Res>
    implements $AskQuestionEventCopyWith<$Res> {
  _$AskQuestionEventCopyWithImpl(this._value, this._then);

  final AskQuestionEvent _value;
  // ignore: unused_field
  final $Res Function(AskQuestionEvent) _then;
}

/// @nodoc
abstract class $FetchCategoryCopyWith<$Res> {
  factory $FetchCategoryCopyWith(
          FetchCategory value, $Res Function(FetchCategory) then) =
      _$FetchCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchCategoryCopyWithImpl<$Res>
    extends _$AskQuestionEventCopyWithImpl<$Res>
    implements $FetchCategoryCopyWith<$Res> {
  _$FetchCategoryCopyWithImpl(
      FetchCategory _value, $Res Function(FetchCategory) _then)
      : super(_value, (v) => _then(v as FetchCategory));

  @override
  FetchCategory get _value => super._value as FetchCategory;
}

/// @nodoc

class _$FetchCategory implements FetchCategory {
  const _$FetchCategory();

  @override
  String toString() {
    return 'AskQuestionEvent.fetchCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategory,
    required TResult Function(String category) selectCategory,
    required TResult Function(String question) selectQuestion,
  }) {
    return fetchCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
  }) {
    return fetchCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
    required TResult orElse(),
  }) {
    if (fetchCategory != null) {
      return fetchCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectQuestion value) selectQuestion,
  }) {
    return fetchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
  }) {
    return fetchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
    required TResult orElse(),
  }) {
    if (fetchCategory != null) {
      return fetchCategory(this);
    }
    return orElse();
  }
}

abstract class FetchCategory implements AskQuestionEvent {
  const factory FetchCategory() = _$FetchCategory;
}

/// @nodoc
abstract class $SelectCategoryCopyWith<$Res> {
  factory $SelectCategoryCopyWith(
          SelectCategory value, $Res Function(SelectCategory) then) =
      _$SelectCategoryCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class _$SelectCategoryCopyWithImpl<$Res>
    extends _$AskQuestionEventCopyWithImpl<$Res>
    implements $SelectCategoryCopyWith<$Res> {
  _$SelectCategoryCopyWithImpl(
      SelectCategory _value, $Res Function(SelectCategory) _then)
      : super(_value, (v) => _then(v as SelectCategory));

  @override
  SelectCategory get _value => super._value as SelectCategory;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(SelectCategory(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCategory implements SelectCategory {
  const _$SelectCategory(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'AskQuestionEvent.selectCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectCategory &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  $SelectCategoryCopyWith<SelectCategory> get copyWith =>
      _$SelectCategoryCopyWithImpl<SelectCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategory,
    required TResult Function(String category) selectCategory,
    required TResult Function(String question) selectQuestion,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectQuestion value) selectQuestion,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class SelectCategory implements AskQuestionEvent {
  const factory SelectCategory(String category) = _$SelectCategory;

  String get category;
  @JsonKey(ignore: true)
  $SelectCategoryCopyWith<SelectCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectQuestionCopyWith<$Res> {
  factory $SelectQuestionCopyWith(
          SelectQuestion value, $Res Function(SelectQuestion) then) =
      _$SelectQuestionCopyWithImpl<$Res>;
  $Res call({String question});
}

/// @nodoc
class _$SelectQuestionCopyWithImpl<$Res>
    extends _$AskQuestionEventCopyWithImpl<$Res>
    implements $SelectQuestionCopyWith<$Res> {
  _$SelectQuestionCopyWithImpl(
      SelectQuestion _value, $Res Function(SelectQuestion) _then)
      : super(_value, (v) => _then(v as SelectQuestion));

  @override
  SelectQuestion get _value => super._value as SelectQuestion;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(SelectQuestion(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectQuestion implements SelectQuestion {
  const _$SelectQuestion(this.question);

  @override
  final String question;

  @override
  String toString() {
    return 'AskQuestionEvent.selectQuestion(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectQuestion &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  $SelectQuestionCopyWith<SelectQuestion> get copyWith =>
      _$SelectQuestionCopyWithImpl<SelectQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategory,
    required TResult Function(String category) selectCategory,
    required TResult Function(String question) selectQuestion,
  }) {
    return selectQuestion(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
  }) {
    return selectQuestion?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategory,
    TResult Function(String category)? selectCategory,
    TResult Function(String question)? selectQuestion,
    required TResult orElse(),
  }) {
    if (selectQuestion != null) {
      return selectQuestion(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategory value) fetchCategory,
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectQuestion value) selectQuestion,
  }) {
    return selectQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
  }) {
    return selectQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategory value)? fetchCategory,
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectQuestion value)? selectQuestion,
    required TResult orElse(),
  }) {
    if (selectQuestion != null) {
      return selectQuestion(this);
    }
    return orElse();
  }
}

abstract class SelectQuestion implements AskQuestionEvent {
  const factory SelectQuestion(String question) = _$SelectQuestion;

  String get question;
  @JsonKey(ignore: true)
  $SelectQuestionCopyWith<SelectQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AskQuestionStateTearOff {
  const _$AskQuestionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  CategoryLoaded categoryLoaded(List<String> category) {
    return CategoryLoaded(
      category,
    );
  }

  SelectedCategory categorySelected(QuestionEntity selectedCategory) {
    return SelectedCategory(
      selectedCategory,
    );
  }

  SelectedQuestion questionSelected(String question) {
    return SelectedQuestion(
      question,
    );
  }

  Error error(String message) {
    return Error(
      message,
    );
  }
}

/// @nodoc
const $AskQuestionState = _$AskQuestionStateTearOff();

/// @nodoc
mixin _$AskQuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> category) categoryLoaded,
    required TResult Function(QuestionEntity selectedCategory) categorySelected,
    required TResult Function(String question) questionSelected,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(SelectedCategory value) categorySelected,
    required TResult Function(SelectedQuestion value) questionSelected,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskQuestionStateCopyWith<$Res> {
  factory $AskQuestionStateCopyWith(
          AskQuestionState value, $Res Function(AskQuestionState) then) =
      _$AskQuestionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AskQuestionStateCopyWithImpl<$Res>
    implements $AskQuestionStateCopyWith<$Res> {
  _$AskQuestionStateCopyWithImpl(this._value, this._then);

  final AskQuestionState _value;
  // ignore: unused_field
  final $Res Function(AskQuestionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AskQuestionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AskQuestionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> category) categoryLoaded,
    required TResult Function(QuestionEntity selectedCategory) categorySelected,
    required TResult Function(String question) questionSelected,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(SelectedCategory value) categorySelected,
    required TResult Function(SelectedQuestion value) questionSelected,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AskQuestionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $CategoryLoadedCopyWith<$Res> {
  factory $CategoryLoadedCopyWith(
          CategoryLoaded value, $Res Function(CategoryLoaded) then) =
      _$CategoryLoadedCopyWithImpl<$Res>;
  $Res call({List<String> category});
}

/// @nodoc
class _$CategoryLoadedCopyWithImpl<$Res>
    extends _$AskQuestionStateCopyWithImpl<$Res>
    implements $CategoryLoadedCopyWith<$Res> {
  _$CategoryLoadedCopyWithImpl(
      CategoryLoaded _value, $Res Function(CategoryLoaded) _then)
      : super(_value, (v) => _then(v as CategoryLoaded));

  @override
  CategoryLoaded get _value => super._value as CategoryLoaded;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(CategoryLoaded(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CategoryLoaded implements CategoryLoaded {
  const _$CategoryLoaded(this.category);

  @override
  final List<String> category;

  @override
  String toString() {
    return 'AskQuestionState.categoryLoaded(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryLoaded &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  $CategoryLoadedCopyWith<CategoryLoaded> get copyWith =>
      _$CategoryLoadedCopyWithImpl<CategoryLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> category) categoryLoaded,
    required TResult Function(QuestionEntity selectedCategory) categorySelected,
    required TResult Function(String question) questionSelected,
    required TResult Function(String message) error,
  }) {
    return categoryLoaded(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
  }) {
    return categoryLoaded?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(SelectedCategory value) categorySelected,
    required TResult Function(SelectedQuestion value) questionSelected,
    required TResult Function(Error value) error,
  }) {
    return categoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
  }) {
    return categoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (categoryLoaded != null) {
      return categoryLoaded(this);
    }
    return orElse();
  }
}

abstract class CategoryLoaded implements AskQuestionState {
  const factory CategoryLoaded(List<String> category) = _$CategoryLoaded;

  List<String> get category;
  @JsonKey(ignore: true)
  $CategoryLoadedCopyWith<CategoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCategoryCopyWith<$Res> {
  factory $SelectedCategoryCopyWith(
          SelectedCategory value, $Res Function(SelectedCategory) then) =
      _$SelectedCategoryCopyWithImpl<$Res>;
  $Res call({QuestionEntity selectedCategory});
}

/// @nodoc
class _$SelectedCategoryCopyWithImpl<$Res>
    extends _$AskQuestionStateCopyWithImpl<$Res>
    implements $SelectedCategoryCopyWith<$Res> {
  _$SelectedCategoryCopyWithImpl(
      SelectedCategory _value, $Res Function(SelectedCategory) _then)
      : super(_value, (v) => _then(v as SelectedCategory));

  @override
  SelectedCategory get _value => super._value as SelectedCategory;

  @override
  $Res call({
    Object? selectedCategory = freezed,
  }) {
    return _then(SelectedCategory(
      selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as QuestionEntity,
    ));
  }
}

/// @nodoc

class _$SelectedCategory implements SelectedCategory {
  const _$SelectedCategory(this.selectedCategory);

  @override
  final QuestionEntity selectedCategory;

  @override
  String toString() {
    return 'AskQuestionState.categorySelected(selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectedCategory &&
            const DeepCollectionEquality()
                .equals(other.selectedCategory, selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedCategory));

  @JsonKey(ignore: true)
  @override
  $SelectedCategoryCopyWith<SelectedCategory> get copyWith =>
      _$SelectedCategoryCopyWithImpl<SelectedCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> category) categoryLoaded,
    required TResult Function(QuestionEntity selectedCategory) categorySelected,
    required TResult Function(String question) questionSelected,
    required TResult Function(String message) error,
  }) {
    return categorySelected(selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
  }) {
    return categorySelected?.call(selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(selectedCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(SelectedCategory value) categorySelected,
    required TResult Function(SelectedQuestion value) questionSelected,
    required TResult Function(Error value) error,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class SelectedCategory implements AskQuestionState {
  const factory SelectedCategory(QuestionEntity selectedCategory) =
      _$SelectedCategory;

  QuestionEntity get selectedCategory;
  @JsonKey(ignore: true)
  $SelectedCategoryCopyWith<SelectedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedQuestionCopyWith<$Res> {
  factory $SelectedQuestionCopyWith(
          SelectedQuestion value, $Res Function(SelectedQuestion) then) =
      _$SelectedQuestionCopyWithImpl<$Res>;
  $Res call({String question});
}

/// @nodoc
class _$SelectedQuestionCopyWithImpl<$Res>
    extends _$AskQuestionStateCopyWithImpl<$Res>
    implements $SelectedQuestionCopyWith<$Res> {
  _$SelectedQuestionCopyWithImpl(
      SelectedQuestion _value, $Res Function(SelectedQuestion) _then)
      : super(_value, (v) => _then(v as SelectedQuestion));

  @override
  SelectedQuestion get _value => super._value as SelectedQuestion;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(SelectedQuestion(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedQuestion implements SelectedQuestion {
  const _$SelectedQuestion(this.question);

  @override
  final String question;

  @override
  String toString() {
    return 'AskQuestionState.questionSelected(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectedQuestion &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  $SelectedQuestionCopyWith<SelectedQuestion> get copyWith =>
      _$SelectedQuestionCopyWithImpl<SelectedQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> category) categoryLoaded,
    required TResult Function(QuestionEntity selectedCategory) categorySelected,
    required TResult Function(String question) questionSelected,
    required TResult Function(String message) error,
  }) {
    return questionSelected(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
  }) {
    return questionSelected?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (questionSelected != null) {
      return questionSelected(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(SelectedCategory value) categorySelected,
    required TResult Function(SelectedQuestion value) questionSelected,
    required TResult Function(Error value) error,
  }) {
    return questionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
  }) {
    return questionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (questionSelected != null) {
      return questionSelected(this);
    }
    return orElse();
  }
}

abstract class SelectedQuestion implements AskQuestionState {
  const factory SelectedQuestion(String question) = _$SelectedQuestion;

  String get question;
  @JsonKey(ignore: true)
  $SelectedQuestionCopyWith<SelectedQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AskQuestionStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AskQuestionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> category) categoryLoaded,
    required TResult Function(QuestionEntity selectedCategory) categorySelected,
    required TResult Function(String question) questionSelected,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> category)? categoryLoaded,
    TResult Function(QuestionEntity selectedCategory)? categorySelected,
    TResult Function(String question)? questionSelected,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoaded value) categoryLoaded,
    required TResult Function(SelectedCategory value) categorySelected,
    required TResult Function(SelectedQuestion value) questionSelected,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoaded value)? categoryLoaded,
    TResult Function(SelectedCategory value)? categorySelected,
    TResult Function(SelectedQuestion value)? questionSelected,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AskQuestionState {
  const factory Error(String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
