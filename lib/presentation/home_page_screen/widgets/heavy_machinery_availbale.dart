import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:truck_booking/data/models/Responses/heavy_machinery_response.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../core/utils/spacing.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/common_image_view.dart';
import 'filter_options.dart';

class HeavyMachineryAvailable extends StatelessWidget {
  HeavyMachineryAvailable({super.key});

  final List<HeavyMachineryResponse> machinery =
      HeavyMachineryResponse.dummyList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: getPadding(
            top: 14,
            right: 10,
          ),
          child: Text(
            "Heavy Machinery available",
            style: GoogleFonts.figtree(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              letterSpacing: 1.1,
            ),
          ),
        ),
        const SizedBox(height: 12),
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
            itemCount: machinery.length,
            itemBuilder: (BuildContext context, int index) {
              final machineries = machinery[index];
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
                          imagePath: machineries.image,
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
                                  machineries.owner,
                                  style: GoogleFonts.figtree(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacing.tinyWidth(),
                                machineries.isVerified
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
                            Text(
                              machineries.description,
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
                                  machineries.location,
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
                                  '${machineries.max_load} | ${machineries.price}',
                                  style: const TextStyle(
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
