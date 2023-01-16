import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicall_project/app/modules/rootPage/widgets/appointments_widget.dart';
import 'package:medicall_project/app/modules/rootPage/widgets/home_widget.dart';
import 'package:medicall_project/app/modules/rootPage/widgets/chat_widget.dart';
import 'package:medicall_project/app/modules/rootPage/widgets/profile_widget.dart';

class RootPageController extends GetxController {
  int selectedIndex = 0;
  List<Widget> pages = const [
    HomeWidget(),
    AppointmentsWidget(),
    ChatWidget(),
    ProfileWidget(),
  ];

  onItemTapped(int value) {
    selectedIndex = value;
    update();
  }
}
