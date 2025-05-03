import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../favorites_page_screen/widgets/favorites_page_item_widget.dart';
import 'controller/favorites_page_controller.dart';
import 'models/favorites_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_drop_down.dart';

class FavoritesPageScreen extends GetWidget<FavoritesPageController> {
  final favourites = [
    {
      'type': 'Truck',
      'title': 'Isuzu FSR 90',
      'details': 'Used on Nairobi - Kisumu route',
      'icon': Icons.local_shipping
    },
    {
      'type': 'Machinery',
      'title': 'Caterpillar D6 Dozer',
      'details': 'Used at Athi River site',
      'icon': Icons.construction
    },
    {
      'type': 'Route',
      'title': 'Return Leg: Eldoret → Nakuru',
      'details': 'Fast delivery with backload opportunity',
      'icon': Icons.alt_route
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(
          56.00,
        ),
        leadingWidth: 20,
        leading: Padding(padding: const EdgeInsets.all(6), child: Container()),
        title: Text(" My Favourites",
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.figtree(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.delete))),
        ],
      ),
      body: favourites.isEmpty
          ? const Center(
              child: Text('No favourites yet.'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                final item = favourites[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Icon(
                      item['icon'] as IconData,
                      color: Colors.cyan,
                    ),
                    title: Text(item['title'].toString(),
                    style: GoogleFonts.figtree(
                      fontWeight: FontWeight.w300,
                      fontSize: 14
                    ),
                    ),
                    subtitle: Text(item['details'].toString(),
                      style: GoogleFonts.figtree(
                          fontWeight: FontWeight.w300,
                          fontSize: 12
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () {
                        // Add remove from favourites logic here
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
