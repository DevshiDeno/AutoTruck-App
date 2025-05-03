import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:truck_booking/presentation/home_page_screen/home_page_screen.dart';
import 'package:truck_booking/presentation/personal_view_profile_page_screen/personal_view_profile_page_screen.dart';

import '../../widgets/work_in_progress.dart';
import '../favorites_page_screen/favorites_page_screen.dart';
import '../history/history_page.dart';

class BottomBarController extends GetxController {
  var selected = 0.obs;
  List<Widget> pages = [
    HomePageScreen(),
    HistoryPage(),
    FavoritesPageScreen(),
    ProfilePage(),
  ];

  void changed(index) {
    selected.value = index;
  }
}
