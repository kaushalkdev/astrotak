import 'package:astrotak/src/core/constants/app_strings.dart';
import 'package:astrotak/src/core/constants/assets.dart';
import 'package:astrotak/src/features/ask_questions/presentation/screens/ask_question.dart';
import 'package:astrotak/src/features/relatives/presentation/screens/relatives.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _pages = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _initPages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _buildTitle(),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          _bottomItem(Assest.home, AppString.home),
          _bottomItem(Assest.talk, AppString.talk),
          _bottomItem(Assest.ask, AppString.ask),
          _bottomItem(Assest.reports, AppString.reports),
          _bottomItem(Assest.chat, AppString.chat),
        ],
        currentIndex: _currentPage,
        onTap: (index) {
          _currentPage = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: _pages[_currentPage],
    );
  }

  Row _buildTitle() {
    return Row(
      children: [
        Image.asset(Assest.hamburger),
        const Spacer(),
        Image.asset(Assest.icon, height: 60, width: 60),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Relatives(),
                ));
          },
          child: const Icon(
            CupertinoIcons.person_alt_circle,
            color: Colors.orange,
            size: 40,
          ),
        )
      ],
    );
  }

  BottomNavigationBarItem _bottomItem(String asset, String lable) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          asset,
          height: 30,
          width: 30,
        ),
        label: lable,
        activeIcon: Image.asset(
          asset,
          height: 30,
          width: 30,
          color: Colors.deepOrange,
        ));
  }

  void _initPages() {
    _pages = [
      Center(
        child: Text(AppString.home),
      ),
      Center(
        child: Text(AppString.talk),
      ),
      AskQuestion(),
      Center(
        child: Text(AppString.reports),
      ),
      Center(
        child: Text(AppString.chat),
      ),
    ];
  }
}
