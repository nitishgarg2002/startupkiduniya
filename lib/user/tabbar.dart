import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startupkiduniya/user/applicationstatus.dart';
import 'package:startupkiduniya/user/dashboard.dart';
import 'package:startupkiduniya/user/home.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  PageController pageController;
  int pageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 12),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Home(),
          ApplicationStatus(),
          Dashboard(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
