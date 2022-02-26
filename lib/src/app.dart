import 'package:astrotak/src/core/services/di/locator.dart';
import 'package:astrotak/src/features/ask_questions/presentation/bloc/ask_question_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home_page/home_page.dart';

class AstroApp extends StatelessWidget {
  const AstroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AskQuestionBloc>(
            create: (context) => getIt.get<AskQuestionBloc>()
              ..add(const AskQuestionEvent.fetchCategory()),
          ),
        ],
        child: const MyHomePage(),
      ),
    );
  }
}
