import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truck_booking/core/app_export.dart';

class SelectDropDown extends StatelessWidget {
  const SelectDropDown({
    super.key,
    required this.hint,
    this.dropdownItems,
    this.onChanged,
    this.controller,
    this.width,
  });

  final SingleValueDropDownController? controller;
  final String hint;
  final List<DropDownValueModel>? dropdownItems;
  final Function(dynamic)? onChanged;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(color: ColorConstant.black),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Container(
        width: 150.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
          child: DropDownTextField(
            textFieldDecoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.figtree(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstant.black,
              ),
              border: InputBorder.none,
            ),
            controller: controller,
            clearOption: true,
            enableSearch: true,
            clearIconProperty: IconProperty(color: Colors.cyan, icon: Icons.cancel_outlined),
            searchTextStyle: GoogleFonts.figtree(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstant.black,
            ),
            searchDecoration: InputDecoration(
              hintText: "Search here",
              hintStyle: GoogleFonts.figtree(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstant.black,
              ),
            ),
            validator: (value) {
              if (value == null) {
                return "Required field";
              } else {
                return null;
              }
            },
            textStyle: GoogleFonts.figtree(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstant.black,
            ),
            dropDownItemCount: 5,
            dropDownList: dropdownItems!,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}

