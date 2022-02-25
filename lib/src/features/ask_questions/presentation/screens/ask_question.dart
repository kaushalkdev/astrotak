import 'package:astrotak/src/core/constants/app_strings.dart';
import 'package:astrotak/src/features/ask_questions/domain/enitites/question_entity.dart';
import 'package:astrotak/src/features/ask_questions/presentation/bloc/ask_question_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AskQuestion extends StatelessWidget {
  AskQuestion({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _blueBar(AppString.walletBalance, AppString.addMoney),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _askAQuestion(),
                _chooseCategory(),
                _textInput(),
                _ideasToAsk(),
                _suggestions(),
              ],
            ),
          ),
        ),
        _bottomBar(),
      ],
    );
  }

  Widget _bottomBar() {
    return BlocBuilder<AskQuestionBloc, AskQuestionState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: _blueBar(
              AppString.oneQuestionOn +
                  (context.watch<AskQuestionBloc>().selectedCategory ?? ""),
              AppString.askNow),
        );
      },
    );
  }

  Padding _textInput() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          maxLength: 150,
          maxLines: 5,
          controller: _controller,
          decoration: InputDecoration(
              hintText: AppString.hintText, border: const OutlineInputBorder()),
        ));
  }

  Widget _blueBar(String title, String buttonText) {
    return Container(
      height: 60,
      color: Colors.indigo,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  buttonText,
                  style: const TextStyle(color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }

  Widget _chooseCategory() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppString.chooseCategory, style: _titleStyle()),
          _categoryBuilder(),
        ],
      ),
    );
  }

  BlocConsumer<AskQuestionBloc, AskQuestionState> _categoryBuilder() {
    return BlocConsumer<AskQuestionBloc, AskQuestionState>(
      listener: (context, state) {
        if (state is Error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      buildWhen: (previous, current) => (current is CategoryLoaded),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          categoryLoaded: (category) => DropdownButton<String>(
            isExpanded: true,
            value: context.watch<AskQuestionBloc>().selectedCategory,
            items: category.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (value) {
              context.read<AskQuestionBloc>().add(SelectCategory(value!));
              _controller.text = '';
            },
          ),
        );
      },
    );
  }

  Widget _ideasToAsk() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.ideastoAsk,
            style: _titleStyle(),
          ),
          const SizedBox(height: 10),
          BlocBuilder<AskQuestionBloc, AskQuestionState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                categorySelected: (selectedCategory) => Column(
                  children: _buildQuestions(selectedCategory, context),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _suggestions() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(AppString.seekAccurate2),
        ),
        _suggestedTexts(),
      ],
    );
  }

  Widget _askAQuestion() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.askQuestion,
            style: _titleStyle(),
          ),
          const SizedBox(height: 5),
          Text(AppString.seekAccurate),
        ],
      ),
    );
  }

  TextStyle _titleStyle() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  }

  Widget _suggestedTexts() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      color: Colors.deepOrange.shade100.withOpacity(0.5),
      child: Column(
        children: [
          for (int i = 0; i < 7; i++)
            _singleSuggestion(AppString.seekAccurate3),
        ],
      ),
    );
  }

  Widget _singleQuestion(String question, Function() ontap) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 0,
          title: Text(question),
          onTap: ontap,
          leading: const Icon(
            Icons.search,
            color: Colors.deepOrange,
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        )
      ],
    );
  }

  List<Widget> _buildQuestions(QuestionEntity questions, BuildContext context) {
    return questions.suggestions
        .map(
          (q) => _singleQuestion(q, () {
            _controller.text = q;
          }),
        )
        .toList();
  }

  Widget _singleSuggestion(String seekAccurate3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.ac_unit, color: Colors.deepOrange, size: 10),
        const SizedBox(width: 5),
        Text(
          seekAccurate3,
          style: const TextStyle(
            color: Colors.deepOrange,
          ),
        ),
      ],
    );
  }
}
