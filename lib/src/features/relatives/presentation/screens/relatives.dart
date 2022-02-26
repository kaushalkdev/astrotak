import 'package:astrotak/src/core/constants/app_strings.dart';
import 'package:astrotak/src/core/constants/assets.dart';
import 'package:astrotak/src/core/services/di/locator.dart';
import 'package:astrotak/src/core/widgets/app_button.dart';
import 'package:astrotak/src/features/relatives/domain/use_cases/relatives_use_case.dart';
import 'package:astrotak/src/features/relatives/presentation/bloc/relatives_bloc.dart';
import 'package:astrotak/src/features/relatives/presentation/screens/all_relatives.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Relatives extends StatelessWidget {
  Relatives({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    BlocProvider<RelativesBloc>(
      create: (context) => RelativesBloc(getIt.get<RelativesUserCase>())
        ..add(const GetRelatives()),
      child: const AllRelatives(),
    ),
    Center(child: Text(AppString.orderHistory)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            _header(context),
            _tabbar(),
            _tabContent(),
          ],
        ),
      ),
    );
  }

  Expanded _tabContent() => Expanded(child: TabBarView(children: _pages));

  TabBar _tabbar() {
    return TabBar(
      labelColor: Colors.deepOrange,
      unselectedLabelColor: Colors.grey,
      tabs: [
        Tab(
          text: AppString.myProfile,
        ),
        Tab(
          text: AppString.orderHistory,
        ),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _backPress(context),
          _logo(),
          _logout(),
        ],
      ),
    );
  }

  Container _logo() {
    return Container(
      margin: const EdgeInsets.only(left: 50),
      child: Image.asset(Assest.icon, height: 60, width: 60),
    );
  }

  GestureDetector _backPress(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        CupertinoIcons.back,
        color: Colors.orange,
        size: 30,
      ),
    );
  }

  Widget _logout() {
    return AppButton(
      text: AppString.logOut,
      textColor: Colors.deepOrange,
    );
  }
}
