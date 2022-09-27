import 'package:flutter/material.dart';

import 'package:super_app/component/common/button/bottom_bar_button_light.dart';

class CustomBottomNavigationBar extends StatelessWidget 
{
  final Function bottomButtonClick;
  final int currentTab;
  const CustomBottomNavigationBar
  ({
    required this.currentTab,
    required this.bottomButtonClick,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return BottomAppBar
    (
      child: Container
      (
        height: 72,
        child: Row
        (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            BottomBarButtonLight
            (
              buttonTitle: "Trang chủ",
              currentTab: currentTab,
              id: 0,
              click_action: bottomButtonClick,
              icon: Icons.home_outlined,
            ),
            BottomBarButtonLight
            (
              buttonTitle: "Tiến trình",
              currentTab: currentTab,
              id: 1,
              click_action: bottomButtonClick,
              icon: Icons.playlist_play_outlined
            ),
            BottomBarButtonLight
            (
              buttonTitle: "Thông báo",
              currentTab: currentTab,
              id: 2,
              click_action: bottomButtonClick,
              icon: Icons.notifications_none_outlined,
            ),
            BottomBarButtonLight
            (
              buttonTitle: "Cài đặt",
              currentTab: currentTab,
              id: 3,
              click_action: bottomButtonClick,
              icon:Icons.settings_outlined
            ),
          ],
        ),
        //SizedBox(height: 5, width: 20,),
      ),
    );
  }
}