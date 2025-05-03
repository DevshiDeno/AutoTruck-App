import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/core/utils/spacing.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'controller/lorry_detail_public_page_controller.dart';

class TruckDetailsPage extends GetWidget<TruckDetailsPageController> {
  final List<String> truckImages = [
    ImageConstant.tata,
    ImageConstant.vannette,
    ImageConstant.mitsubishi,
    ImageConstant.graders
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        height: getVerticalSize(
          56.00,
        ),
        leadingWidth: 43,
        leading: Padding(
            padding: const EdgeInsets.all(6),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios))),
        centerTitle: true,
        title: Text(
          "Truck Profile",
          style: GoogleFonts.figtree(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1.1,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                color: Colors.red,
                Icons.report,
                size: 25,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🖼️ Carousel of Truck Images
                CarouselSlider(
                  options: CarouselOptions(
                    height: 180.h,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: truckImages.map((imageUrl) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  }).toList(),
                ),

                SizedBox(height: 20.h),
                // Truck Registration Info
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    // color: Colors.teal.shade50,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Registration Number: KDA 123X',
                              style: _titleTextStyle()),
                          IconButton(
                              onPressed: () {
                                controller.isFavourite.value =
                                    !controller.isFavourite.value;
                              },
                              icon: !controller.isFavourite.value ? Icon(Icons.favorite_border)
                          : Icon(Icons.favorite,color: Colors.red)
                          )
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text('Truck Type: Flatbed', style: _normalTextStyle()),
                      Text('Max Tonnage: 20 Tons', style: _normalTextStyle()),
                      Text('Availability: Available',
                          style: _normalTextStyle()),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                // Owner Information
                Text('Owner Details', style: _sectionTitleStyle()),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: John Doe', style: _normalTextStyle()),
                      Text('Phone: +254 700 123456', style: _normalTextStyle()),
                      Text('Email: johndoe@example.com',
                          style: _normalTextStyle()),
                    ],
                  ),
                ),

                SizedBox(height: 20.h),

                // Customer Reviews
                Text('Customer Reviews', style: _sectionTitleStyle()),
                SizedBox(height: 10.h),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(12.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.15),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ]),
                      child: Column(
                        children: [
                          Row(children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.person),
                            ),
                            Spacing.smallWidth(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dennis",
                                  style: GoogleFonts.figtree(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year} ago",
                                  style: GoogleFonts.figtree(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                          ]),
                          Spacing.smallHeight(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RatingStars(
                                  valueLabelVisibility: false,
                                  value: 4.0,
                                  starCount: 5,
                                  starColor: Colors.yellow,
                                ),
                              ),
                              Text(
                                'Great service, very professional. Truck was on time.',
                                overflow: TextOverflow.visible,
                                maxLines: 2,
                                style: GoogleFonts.figtree(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Spacing.smallHeight();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.call),
        ),
      ),
    );
  }

  onTapArrowleft2() {
    Get.back();
  }
}

TextStyle _titleTextStyle() {
  return GoogleFonts.figtree(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );
}

TextStyle _normalTextStyle() {
  return GoogleFonts.figtree(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black54,
  );
}

TextStyle _sectionTitleStyle() {
  return GoogleFonts.figtree(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );
}
