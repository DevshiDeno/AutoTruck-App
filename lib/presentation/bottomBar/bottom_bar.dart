import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../home_page_screen/home_page_screen.dart';
import 'controller.dart';

class AutoTruckBottomBar extends GetWidget<BottomBarController> {
  @override
  Widget build(context) {
    return Obx(
          () =>
          Scaffold(
            body: controller.pages[controller.selected.value],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.cyan,
              unselectedItemColor: Colors.grey[400],
              selectedFontSize: 12,
              unselectedFontSize: 10,
              iconSize: 22, // base size
              currentIndex: controller.selected.value,
              onTap: controller.changed,
              items: const [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(Icons.home_rounded, size: 22),
                  activeIcon: Icon(Icons.home_rounded, size: 30), // enlarged
                ),
                BottomNavigationBarItem(
                  label: "History",
                  icon: Icon(Icons.history_rounded, size: 22),
                  activeIcon: Icon(Icons.history_rounded, size: 30),
                ),
                BottomNavigationBarItem(
                  label: "Favourites",
                  icon: Icon(Icons.favorite_border, size: 22),
                  activeIcon: Icon(
                      Icons.favorite, size: 30), // filled heart when active
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(Icons.person_rounded, size: 22),
                  activeIcon: Icon(Icons.person_rounded, size: 30),
                ),
              ],
            ),

          ),
    ),);
  }
}
