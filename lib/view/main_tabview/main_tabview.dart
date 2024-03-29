import 'package:flutter/material.dart';
import 'package:home_made/common/color_extension.dart';
import 'package:home_made/view/home/home_view.dart';

import '../../common_widget/tab_button.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selctTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      backgroundColor: const Color(0xfff5f5f5),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: TColor.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 8,
        // height: 60,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton(
              title: "Home", 
              onTap: () {
                if (selctTab != 0) {
                  selctTab = 0;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              }, 
              isSelected: selctTab == 0,
              icon: "assets/img/tab_home.png"
            ),
            TabButton(
              title: "Explore", 
              onTap: () {
                if (selctTab != 1) {
                  selctTab = 1;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              }, 
              isSelected: selctTab == 0,
              icon: "assets/img/tab_home.png"
            ),
            TabButton(
              title: "History", 
              onTap: () {
                if (selctTab != 2) {
                  selctTab = 2;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              }, 
              isSelected: selctTab == 0,
              icon: "assets/img/tab_home.png"
            ),
            TabButton(
              title: "Account", 
              onTap: () {
                if (selctTab != 3) {
                  selctTab = 3;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              }, 
              isSelected: selctTab == 0,
              icon: "assets/img/tab_home.png"
            )
          ],
        )
      ),
    );
  }
}

