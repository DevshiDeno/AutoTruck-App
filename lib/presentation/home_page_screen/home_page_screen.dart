import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/home_page_screen/widgets/filter_options.dart';
import 'package:truck_booking/presentation/home_page_screen/widgets/heavy_machinery_availbale.dart';
import 'package:truck_booking/presentation/home_page_screen/widgets/return_legs_available.dart';
import 'package:truck_booking/presentation/home_page_screen/widgets/trucks_available.dart';
import 'package:truck_booking/widgets/app_bar/appbar_image.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_tab_bar.dart';

import 'controller/home_page_controller.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 10,
          leading: Container(),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                color: ColorConstant.whiteA700,
                child: Image.asset(
                  ImageConstant.autoTruckLogo,
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("AutoTruck",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.figtree(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                  Text(
                    "Africa.",
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.figtree(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.lightBlue,
                      letterSpacing: 0.32,
                    ),
                  ),
                ],
              )
            ],
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 24,
                top: 16,
                right: 24,
                bottom: 16,
              ),
              onTap: () {
                Get.toNamed(AppRoutes.notificationPage);
              },
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(
            left: 12,
            top: 7,
            right: 12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 16,
                  right: 10,
                ),
                child: Text(
                  "Our Services",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBold14Gray9007e.copyWith(
                    letterSpacing: 1.12,
                  ),
                ),
              ),
              CustomTabBar(tabController: controller.tabController),
              Expanded(
                child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      TrucksAvailable(),
                      HeavyMachineryAvailable(),
                      ReturnLegsAvailable()
                    ]),
              )
            ],
          ),
        ),

        // floatingActionButton: Container(
        //   width: 251,
        //   height: 60,
        //   decoration: BoxDecoration(
        //       color: Color(0xFF225EFF),
        //       borderRadius: BorderRadius.circular(12)
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Padding(
        //         padding: getPadding(
        //           left: 20,
        //         ),
        //         child: Text(
        //           "lbl_attach_lorries".tr,
        //           overflow: TextOverflow.ellipsis,
        //           textAlign: TextAlign.left,
        //           style: AppStyle.txtMontserratBold14Gray9007e.copyWith(
        //             color: Colors.white,
        //             letterSpacing: 1.12,
        //           ),
        //         ),
        //       ),
        //       Container(
        //           padding: getPadding(all: 11),
        //           decoration: BoxDecoration(
        //             color: Colors.blue.withOpacity(0.3),
        //             borderRadius: BorderRadius.circular(8),
        //           ),
        //           child: Container(
        //             child: CommonImageView(
        //               svgPath: ImageConstant.imgPlus,
        //             ),
        //           )
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
