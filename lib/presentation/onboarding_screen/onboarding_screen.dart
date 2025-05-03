import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/spacing.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_elevated_button.dart';
import 'onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(children: [
          Positioned.fill(
            // Ensures the image covers the entire screen
            child: _controller.currentIndex.value == 0
                ? Opacity(
                    opacity: 0.2,
                    child: Image.asset(
                      ImageConstant.tata,
                      fit: BoxFit
                          .cover, // or BoxFit.fitHeight depending on your layout
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.gray900A2,
                      // Ensure this color is defined in your AppColors
                      blurRadius: 4,
                      // Soft shadow effect
                      spreadRadius: 3,
                      // Controls shadow spread
                      offset: const Offset(
                          0, 4), // Vertical offset for shadow position
                    ),
                  ],
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: Get.width * 0.1, // 10% of screen width
                    backgroundColor: ColorConstant.white,
                    // Ensure this color is defined
                    child: ClipOval(
                      // Clip the image to ensure it follows a circular shape
                      child: Image.asset(
                        ImageConstant.autoTruckLogo,
                        // Ensure this path is correct
                        // width:100,                     // Adjust image size to fit the CircleAvatar
                        // height: 100,
                        fit: BoxFit
                            .cover, // Ensures the image covers the area without distortion
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Expanded(
                child: PageView.builder(
                  controller: _controller.pageController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) =>
                      _controller.currentIndex.value = index,
                  itemCount: _controller.contents.length,
                  itemBuilder: (context, index) {
                    final content = _controller.contents[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Optional image/icon per step
                          if (index == 0) ...[
                            SvgPicture.asset(ImageConstant.truck, height: 150.h),
                            Spacing.mediumHeight(),
                          ] else if (index == 1) ...[
                            SvgPicture.asset(ImageConstant.mapIcon, height: 150.h),
                            Spacing.mediumHeight(),
                          ] else if (index == 2) ...[
                            SvgPicture.asset(ImageConstant.cargo, height: 150.h),
                            Spacing.mediumHeight(),
                          ] else if (index == 3) ...[
                            SvgPicture.asset(ImageConstant.smileIcon, height: 150.h),
                            Spacing.mediumHeight(),
                          ],

                          Text(
                            content.title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.figtree(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.gray900,
                            ),
                          ),
                          Spacing.mediumHeight(),
                          Text(
                            content.desc,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.figtree(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.gray900,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Spacing.smallHeight(),
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _controller.currentIndex.value > 0
                          ? Container(
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  onPressed: () {
                                    _controller.currentIndex.value =
                                        _controller.currentIndex.value - 1;
                                    print(_controller.currentIndex.value);
                                  },
                                  icon: Icon(
                                    color: ColorConstant.blueA700,
                                    Icons.arrow_back_ios_new,
                                    size: 15,
                                  )),
                            )
                          : CustomElevatedButton(
                              backgroundGradient: const LinearGradient(
                                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              widget: Text("Skip",
                                  style: GoogleFonts.inter(
                                    color: ColorConstant.gray900A2,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  )),
                              onPressed: _controller.skip,
                            ),
                      DotsIndicator(
                        dotsCount: _controller.contents.length,
                        position: _controller.currentIndex.value.toDouble(),
                        decorator: DotsDecorator(
                          color: ColorConstant.gray900A2,
                          activeColor: ColorConstant.blueA700,
                          // Active dot color
                          size: const Size(12.0, 12.0),
                          // Dot size
                          activeSize: const Size(28.0, 12.0),
                          // Active dot size
                          activeShape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6.0), // Rounded rectangle
                          ),
                          spacing: const EdgeInsets.symmetric(horizontal: 4.0),
                        ),
                      ),
                      CustomElevatedButton(
                          backgroundGradient: LinearGradient(
                            colors: [Colors.cyan[600]!, Colors.cyan[700]!],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          widget: _controller.currentIndex.value ==
                                  _controller.contents.length - 1
                              ? Text("Start",
                                  style: GoogleFonts.inter(
                                    color: ColorConstant.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ))
                              : Row(
                                  children: [
                                    Text("Next",
                                        style: GoogleFonts.inter(
                                          color: ColorConstant.whiteA700,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Icon(
                                      color: ColorConstant.whiteA700,
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                    )
                                  ],
                                ),
                          onPressed: _controller.nextPage),
                    ],
                  )),
              Spacing.largeHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SvgPicture.asset(AppAssets.leftFooterDesign),
                  // SvgPicture.asset(AppAssets.rightFooterDesign),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
