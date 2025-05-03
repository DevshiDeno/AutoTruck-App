import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/data/models/Responses/TruckModelResponse.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/utils/spacing.dart';
import 'filter_options.dart';

class TrucksAvailable extends StatelessWidget {
  TrucksAvailable({super.key});

  final List<TruckModelResponse> trucks = TruckModelResponse.dummyList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 14, right: 10, left: 16),
          child: Text(
            "Trucks available",
            style: GoogleFonts.figtree(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              letterSpacing: 1.1,
            ),
          ),
        ),
        Center(
          child: SearchBarAnimation(
            hintText: "Search by location,max-tones,vehicle",
            textEditingController: TextEditingController(),
            isOriginalAnimation: true,
            trailingWidget: SizedBox.shrink(),
            secondaryButtonWidget: Icon(Icons.close),
            buttonWidget: SvgPicture.asset(ImageConstant.imgSearch),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: trucks.length,
            itemBuilder: (BuildContext context, int index) {
              final truck = trucks[index];
              return GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.lorryDetailPublicPageScreen);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CommonImageView(
                          imagePath: truck.image,
                          width: 100,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  truck.owner,
                                  style: GoogleFonts.figtree(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacing.tinyWidth(),
                                truck.isVerified
                                    ? CommonImageView(
                                  imagePath: ImageConstant.verified,
                                  width: 16,
                                  height: 16,
                                  fit: BoxFit.cover,
                                )
                                    : SizedBox.shrink(),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  truck.phoneNumber,
                                  style: GoogleFonts.figtree(
                                    fontSize: 13,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              truck.description,
                              style: GoogleFonts.figtree(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                    size: 16, color: Colors.grey),
                                const SizedBox(width: 4),
                                Text(
                                  truck.location,
                                  style: GoogleFonts.figtree(
                                    fontSize: 13,
                                    color: Colors.black54,
                                  ),
                                ),
                                Spacing.smallWidth(),
                                Icon(Icons.fire_truck,
                                    size: 16, color: Colors.grey),
                                SizedBox(width: 4.w),
                                Text(
                                  truck.type,
                                  style: GoogleFonts.figtree(
                                    fontSize: 13,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.local_shipping_outlined,
                                    size: 16, color: Colors.grey),
                                const SizedBox(width: 4),
                                Text(
                                  '${truck.max_load} | ${truck.price}',
                                  style: GoogleFonts.figtree(
                                    fontSize: 13,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Spacing.smallHeight(),
          ),
        ),
      ],
    );
  }
}
