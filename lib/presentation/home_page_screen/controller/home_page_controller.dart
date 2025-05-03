import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/home_page_screen/models/home_page_model.dart';
import 'package:flutter/material.dart';

class HomePageController extends GetxController  with GetSingleTickerProviderStateMixin{
  late  TabController tabController;
  @override
  void onInit() {
    super.onInit();
  tabController=TabController(length: 3, vsync: this);
  }

  TextEditingController floatingButtonController = TextEditingController();
  TextEditingController searchFieldController = TextEditingController();

  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;
  RxBool isSearching = false.obs;

  @override
  void onReady() {
    super.onReady();
  }



  @override
  void onClose() {
    super.onClose();
    floatingButtonController.dispose();
  }
}
