import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../core/utils/spacing.dart';
import 'controller/menu_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

class MenuPageScreen extends GetWidget<MenuPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width * 0.75, // narrower for desktop
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan[600]!, Colors.cyan[700]!],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero, // Remove default margin
              padding: EdgeInsets.zero, // Remove default padding
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.cyan[600]!, Colors.cyan[700]!],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      " AppAssets.patternBackground",
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 90.w,
                            height: 90.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    ImageConstant.autoTruckLogo,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Dennis Muturi",
                            style: GoogleFonts.figtree(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: ColorConstant.white,
                child: Column(
                  children: [
                    _buildMenuSection(title: 'Profile', items: []

                    )
                  ]


                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(
      {required String title, required List<Widget> items}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacing.smallHeight(),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: ColorConstant.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                  child: Text(
                    title,
                    style: GoogleFonts.figtree(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4D5154),
                    ),
                  ),
                ),
                ...items.map((item) => Column(
                      children: [
                        item,
                        if (item != items.last)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Divider(height: 1, color: Colors.grey[300]),
                          ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  final Function()? onTap;
  final String leadingImage;
  final String description;

  const MenuItems({
    required this.leadingImage,
    required this.description,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 12.w,
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(
                    leadingImage,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.figtree(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4D5154),
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios,
                size: 10.sp, color: const Color(0xFF7A7C7F))
          ],
        ),
      ),
    );
  }
}
