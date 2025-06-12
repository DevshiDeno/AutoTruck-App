import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample mock notifications
    final notifications = [
      {
        'title': 'Booking Confirmed',
        'body': 'Your truck booking from Nairobi to Mombasa is confirmed.',
        'timestamp': '2 hrs ago',
        'icon': Icons.check_circle_outline,
        'color': Colors.green
      },
      {
        'title': 'Return Leg Available',
        'body': 'A return trip from Kisumu to Nakuru is now available.',
        'timestamp': '5 hrs ago',
        'icon': Icons.alt_route,
        'color': Colors.blue
      },
      {
        'title': 'Promo: 10% Off',
        'body': 'Use code AUTOTRUCK10 for your next booking.',
        'timestamp': '1 day ago',
        'icon': Icons.local_offer,
        'color': Colors.orange
      },
    ];

    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(
          56.00,
        ),
        leadingWidth: 50,
        leading: Padding(
            padding: const EdgeInsets.all(6),
            child:
                IconButton(onPressed: () {
                  Get.back();
                }, icon: Icon(Icons.arrow_back_ios))),
        title: Text("Notifications",
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.figtree(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(onPressed: () {
              }, icon: Icon(Icons.delete))),
        ],
      ),
      body: notifications.isEmpty
          ? const Center(child: Text('No new notifications.'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notif = notifications[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: notif['color'] as Color,
                      child: Icon(
                        notif['icon'] as IconData,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      notif['title'].toString(),
                      style: GoogleFonts.figtree(
                          fontWeight: FontWeight.w600, fontSize: 14.sp),
                    ),
                    subtitle: Text(
                      notif['body'].toString(),
                      style: GoogleFonts.figtree(
                          fontWeight: FontWeight.w300, fontSize: 12.sp),
                    ),
                    trailing: Text(
                      notif['timestamp'].toString(),
                      style: GoogleFonts.figtree(
                          fontWeight: FontWeight.w300,
                          fontSize: 12.sp,
                          color: Colors.grey),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
