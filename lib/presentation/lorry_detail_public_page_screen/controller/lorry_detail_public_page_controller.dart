import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/lorry_detail_public_page_screen/models/lorry_detail_public_page_model.dart';

class TruckDetailsPageController extends GetxController {
  Rx<LorryDetailPublicPageModel> lorryDetailPublicPageModelObj =
      LorryDetailPublicPageModel().obs;
RxBool isFavourite=false.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
