import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truck_booking/core/app_export.dart';

class CustomTabBar extends StatefulWidget {
  final TabController tabController;

  const CustomTabBar({required this.tabController, super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(_onTabChanged);
  }
  void _onTabChanged() {
    setState(() {});  // Triggers a rebuild when the tab index changes
  }

  @override
  void dispose() {
    widget.tabController.removeListener(_onTabChanged);  // Clean up the listener
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF0F2FD), Color(0xFFFFF8F9)],
          ),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            // OTP Login Tab
            _buildTab(
              label: 'Trucks',
              index: 0,
              isSelected: widget.tabController.index == 0,
            ),
            // Password Login Tab
            _buildTab(
              label: 'Machinery',
              index: 1,
              isSelected: widget.tabController.index == 1,
            ),
            _buildTab(
              label: 'Return Legs',
              index: 2,
              isSelected: widget.tabController.index == 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(
      {required String label, required int index, required bool isSelected}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.tabController.animateTo(index); // Switch to selected tab
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30.h,
            decoration: BoxDecoration(
              gradient: isSelected
                  ? LinearGradient(
                colors: [Colors.cyan[600]!,  Colors.cyan[700]!],
                // Custom gradient colors
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
                  : null,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Center(
              child: Text(
                label,
                style: GoogleFonts.figtree(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.r,
                  color: isSelected ? ColorConstant.white : ColorConstant.black ,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
