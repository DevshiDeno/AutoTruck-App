import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truck_booking/presentation/bottomBar/controller.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/custom_button.dart';
import '../personal_view_profile_page_screen/widgets/listratingstars_item_widget.dart';
import 'controller/personal_view_profile_page_controller.dart';
import 'models/listratingstars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data (replace with real data)
    final String profileImage = 'https://via.placeholder.com/150';
    final String name = 'Dennis K.';
    final String phone = '+254 712 345678';
    final String email = 'dennis@example.com';
    final int reviewsPosted = 24;
    final int trucksOwned = 3;

    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(
          56.00,
        ),
        leadingWidth: 20,
        leading: Padding(padding: const EdgeInsets.all(6), child: Container()),
        title: Text("My Profile",
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.figtree(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(
                  onPressed: () {},
                  icon: IconButton(onPressed: () {}, icon: Icon(Icons.edit)))),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture and Name
            Column(
              children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.cyan, width: 2),
                    ),
                    child: Icon(Icons.person, size: 90, color: Colors.cyan)),
                const SizedBox(height: 12),
                Text(
                  name,
                  style: GoogleFonts.figtree(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Contact Info
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.cyan),
                title: Text(
                  phone,
                  style: GoogleFonts.figtree(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.email, color: Colors.cyan),
                title: Text(
                  email,
                  style: GoogleFonts.figtree(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Stats Section
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.cyan[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const Icon(Icons.reviews, color: Colors.cyan),
                          const SizedBox(height: 8),
                          Text(
                            '$reviewsPosted',
                            style: GoogleFonts.figtree(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            'Reviews Posted',
                            style: GoogleFonts.figtree(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Card(
                    color: Colors.cyan[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const Icon(Icons.local_shipping, color: Colors.cyan),
                          const SizedBox(height: 8),
                          Text(
                            '$trucksOwned',
                            style: GoogleFonts.figtree(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            'Trucks Owned',
                            style: GoogleFonts.figtree(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
