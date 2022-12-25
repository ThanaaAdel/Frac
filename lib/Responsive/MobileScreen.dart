// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frac/pages/Chat.dart';
import 'package:frac/pages/Events.dart';
import 'package:frac/pages/Groups.dart';
import 'package:frac/pages/Home.dart';
import 'package:frac/pages/Profile.dart';
import 'package:frac/pages/Question&Answer.dart';
import 'package:frac/pages/Search.dart';
import 'package:frac/pages/add_post.dart';
import 'package:frac/shared/colors.dart';


class MobileScerren extends StatefulWidget {
  const MobileScerren({Key? key}) : super(key: key);

  @override
  State<MobileScerren> createState() => _MobileScerrenState();
}

class _MobileScerrenState extends State<MobileScerren> {
  final PageController _pageController = PageController();

  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: appbarGreen,
          onTap: (index) {
            // navigate to the tabed page
            _pageController.jumpToPage(index);
            setState(() {
              currentPage = index;
            });

            // print(   "---------------    $index "  );
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,

                  color: currentPage == 0 ? primaryColor : mobileBackgroundColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.question_answer,

                  color: currentPage == 1 ? primaryColor : mobileBackgroundColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups,

                  color: currentPage == 2 ? primaryColor : mobileBackgroundColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.event,

                  color: currentPage == 3 ? primaryColor : mobileBackgroundColor,
                ),
                label: ""),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.message,
            //
            //       color: currentPage == 3 ? primaryColor : mobileBackgroundColor,
            //     ),
            //     label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,

                  color: currentPage == 4 ? primaryColor : mobileBackgroundColor,
                ),
                label: ""),
          ]),
      body: PageView(
        onPageChanged: (index) {
          print("------- $index");
        },
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          QuestionAnswer(),
          Groups(),
          Events(),
          //Chat(),
          Profile(),
        ],
      ),
    );
  }
}