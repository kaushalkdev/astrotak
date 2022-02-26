import 'package:astrotak/src/core/constants/app_strings.dart';
import 'package:astrotak/src/core/widgets/app_button.dart';
import 'package:astrotak/src/core/widgets/loader.dart';
import 'package:astrotak/src/features/relatives/domain/entities/relative.dart';
import 'package:astrotak/src/features/relatives/presentation/bloc/relatives_bloc.dart';
import 'package:astrotak/src/features/relatives/presentation/screens/edit_relative.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'add_relative.dart';

class AllRelatives extends StatelessWidget {
  const AllRelatives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _addMoney(),
        _tableHeader(),
        _relativesBuilder(),
      ],
    );
  }

  Row _tableHeader() {
    return Row(
      children: [
        const SizedBox(width: 20),
        _singleText(AppString.name, size: 14, textColor: Colors.indigo),
        _singleText(AppString.dob, flex: 2, size: 14, textColor: Colors.indigo),
        _singleText(AppString.tob, flex: 2, size: 14, textColor: Colors.indigo),
        _singleText(AppString.relation,
            flex: 2, size: 14, textColor: Colors.indigo),
        // spaxing for proper table header
        Flexible(flex: 2, child: Container())
      ],
    );
  }

  Container _addMoney() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.indigo.withOpacity(0.25),
      ),
      child: _addMoneyBody(),
    );
  }

  Row _addMoneyBody() {
    return Row(
      children: [
        const SizedBox(width: 10),
        const Icon(
          Icons.account_balance_wallet,
          color: Colors.indigo,
          size: 30,
        ),
        const SizedBox(width: 5),
        Text(
          AppString.walletBalance,
          style: const TextStyle(color: Colors.indigo, fontSize: 16),
        ),
        const Spacer(),
        AppButton(
          height: 30,
          text: AppString.addMoney,
          textColor: Colors.indigo,
        )
      ],
    );
  }

  Widget _relativesBuilder() {
    return BlocConsumer<RelativesBloc, RelativesState>(
      buildWhen: (previous, current) =>
          (current is RelativesLoaded || current is Initial),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          initial: () => _loading(),
          relativesLoaded: (relatives) {
            return Expanded(
              child: Column(
                children: [
                  _relativesList(relatives, context),
                  SafeArea(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AddNewRelative(),
                      ));
                    },
                    child: Text(AppString.addProfile),
                  )),
                ],
              ),
            );
          },
        );
      },
      listener: (context, state) {
        if (state is Error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        } else if (state is RelativeDeleted) {
          context.read<RelativesBloc>().add(const GetRelatives());
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Deleted Successfully')));
        } else if (state is RelativeUpdated) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Updated Successfully')));
        } else if (state is RelativeAdded) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Added Successfully')));
        }
      },
    );
  }

  Widget _relativesList(List<Relative> relatives, BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: relatives.isEmpty
                ? Center(
                    child: Text(AppString.noRelatives),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.only(top: 10),
                    itemCount: relatives.length,
                    itemBuilder: (context, index) =>
                        _singleRelative(relatives[index], context),
                  ),
          ),
        ],
      ),
    );
  }

  Container _singleRelative(Relative relative, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(blurRadius: 3, color: Colors.grey)],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _singleText(relative.firstName),
          _singleText(_dob(relative.dateAndTimeOfBirth), flex: 2),
          _singleText(_time(relative.dateAndTimeOfBirth), flex: 2),
          const SizedBox(width: 10),
          _singleText(relative.relation),
          _editDelete(relative, context)
        ],
      ),
    );
  }

  Flexible _editDelete(Relative relative, BuildContext _context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(_context).push(
                MaterialPageRoute(
                  builder: (context) => const EditRelative(),
                ),
              );
            },
            child: const Icon(Icons.edit, color: Colors.orange),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: _context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    title: Center(
                      child: Text(
                        AppString.deleteText,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    content: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            onPressed: () {
                              _context
                                  .read<RelativesBloc>()
                                  .add(DeleteRelative(relative.uuid));

                              Navigator.pop(context);
                            },
                            child: Text(AppString.yes),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(AppString.no),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Icon(Icons.delete, color: Colors.deepOrange),
          ),
        ],
      ),
    );
  }

  Flexible _singleText(
    String text, {
    int flex = 1,
    double size = 12,
    Color? textColor,
  }) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: size, color: textColor),
        ),
      ),
    );
  }

  String _time(String date) {
    return DateFormat('hh:mm a').format(DateTime.parse(date)).toString();
  }

  String _dob(String date) {
    return DateFormat('dd-MM-yyyy').format(DateTime.parse(date)).toString();
  }

  Column _loading() {
    return Column(
      children: [for (int i = 0; i < 5; i++) const Loader()],
    );
  }
}
