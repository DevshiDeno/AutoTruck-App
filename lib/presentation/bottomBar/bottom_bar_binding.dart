import 'package:get/get.dart';

import '../home_page_screen/controller/home_page_controller.dart';
import 'controller.dart';

class BottomBarBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<BottomBarController>(() => BottomBarController());
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
