import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/transporters_page_screen/models/transporters_page_model.dart';

class TransportersPageController extends GetxController {
  Rx<TransportersPageModel> transportersPageModelObj =
      TransportersPageModel().obs;

  DropDownValueModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as DropDownValueModel;
    transportersPageModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value) {
        element.isSelected = true;
      }
    });
    transportersPageModelObj.value.dropdownItemList.refresh();
  }
}
