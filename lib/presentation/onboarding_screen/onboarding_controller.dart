import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_routes.dart';
import 'onboarding_content.dart';


class OnboardingController extends GetxController{
  OnboardingController();
  RxInt currentIndex = 0.obs;
  final PageController pageController = PageController();
  final List<OnboardingContents> contents = OnboardingContents.contents;

  void nextPage() {
    if (currentIndex < contents.length - 1) {
      currentIndex++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      final GetStorage storage = GetStorage();
      // storage.write(StorageConstants.firstTime, false);
      Get.offNamed(AppRoutes.signUpPageScreen);
    }
  }

  void skip() {
    pageController.jumpToPage(contents.length - 1);
    currentIndex.value = contents.length - 1;
  }

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }
}