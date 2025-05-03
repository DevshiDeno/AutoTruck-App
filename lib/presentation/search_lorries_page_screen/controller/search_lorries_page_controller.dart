import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/search_lorries_page_screen/models/search_lorries_page_model.dart';
import 'package:flutter/material.dart';

class SearchLorriesPageController extends GetxController {
  TextEditingController searchFieldController = TextEditingController();

  Rx<SearchLorriesPageModel> searchLorriesPageModelObj =
      SearchLorriesPageModel().obs;

  DropDownValueModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchFieldController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as DropDownValueModel;
    searchLorriesPageModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value) {
        element.isSelected = true;
      }
    });
    searchLorriesPageModelObj.value.dropdownItemList.refresh();
  }
}
