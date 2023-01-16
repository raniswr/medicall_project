import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicall_project/app/modules/rootPage/controllers/root_page_controller.dart';

import 'package:medicall_project/core/constant/colors.dart';

class RootPageView extends GetView<RootPageController> {
  const RootPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootPageController>(builder: (controller) {
      return Scaffold(
        body: controller.pages.elementAt(controller.selectedIndex),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      );
    });
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootPageController>(builder: (controller) {
      return SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          backgroundColor: AppColors.white,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 33,
                color: AppColors.grayLight1Divider,
              ),
              activeIcon: Icon(
                Icons.home_outlined,
                size: 33,
                color: AppColors.purple,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                size: 25,
                color: AppColors.grayLight1Divider,
              ),
              activeIcon: Icon(
                Icons.calendar_today_outlined,
                size: 25,
                color: AppColors.purple,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
                size: 25,
                color: AppColors.grayLight1Divider,
              ),
              activeIcon: Icon(
                Icons.chat_outlined,
                size: 25,
                color: AppColors.purple,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
                size: 33,
                color: AppColors.grayLight1Divider,
              ),
              activeIcon: Icon(
                Icons.person_outline_outlined,
                size: 33,
                color: AppColors.purple,
              ),
              label: '',
            ),
          ],
          currentIndex: controller.selectedIndex,
          unselectedItemColor: AppColors.grayMedium,
          selectedItemColor: AppColors.purple,
          elevation: 0,
          onTap: controller.onItemTapped,
        ),
      );
    });
  }
}
