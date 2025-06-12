import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/utils/spacing.dart';
import 'package:truck_booking/widgets/custom_drop_down.dart';

class TruckFilterOptions extends StatelessWidget {
  const TruckFilterOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50.h,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SelectDropDown(
                hint: 'Max Tonnage',
                dropdownItems: [
                  DropDownValueModel(value: '5', name: '5 Tons'),
                  DropDownValueModel(value: '10', name: '10 Tons'),
                  DropDownValueModel(value: '20', name: '20 Tons'),
                ],
              ),
              Spacing.smallWidth(),
              SelectDropDown(
                hint: 'Truck Type',
                dropdownItems: [
                  DropDownValueModel(value: 'Flatbed', name: 'Flatbed'),
                  DropDownValueModel(value: 'Box Truck', name: 'Box Truck'),
                  DropDownValueModel(value: 'Reefer', name: 'Reefer'),
                ],
              ),
            ],
          ),
          Spacing.smallHeight(),
          SelectDropDown(
            hint: 'Location',
            dropdownItems: [
              DropDownValueModel(value: 'Nairobi', name: 'Nairobi'),
              DropDownValueModel(value: 'Mombasa', name: 'Mombasa'),
              DropDownValueModel(value: 'Kisumu', name: 'Kisumu'),
            ],
          ),
        ],
      ),
    );
  }
}

// class HeavyMachineryFilterOptions extends StatelessWidget {
//   const HeavyMachineryFilterOptions({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               SelectDropDown(
//                 hint: 'Machin.. Type',
//                 dropdownItems: [
//                   DropDownValueModel(value: 'Flatbed', name: 'Flatbed'),
//                   DropDownValueModel(value: 'Box Truck', name: 'Box Truck'),
//                   DropDownValueModel(value: 'Reefer', name: 'Reefer'),
//                 ],
//               ),
//               Spacing.smallWidth(),
//               SelectDropDown(
//                 hint: 'Location',
//                 dropdownItems: [
//                   DropDownValueModel(value: 'Nairobi', name: 'Nairobi'),
//                   DropDownValueModel(value: 'Mombasa', name: 'Mombasa'),
//                   DropDownValueModel(value: 'Kisumu', name: 'Kisumu'),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class ReturnLegFilterOptions extends StatelessWidget {
  const ReturnLegFilterOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SelectDropDown(
            hint: 'From',
            dropdownItems: [
              DropDownValueModel(value: 'Nairobi', name: 'Nairobi'),
              DropDownValueModel(value: 'Mombasa', name: 'Mombasa'),
              DropDownValueModel(value: 'Kisumu', name: 'Kisumu'),
            ],
          ),
          Spacing.smallWidth(),
          SelectDropDown(
            hint: 'To',
            dropdownItems: [
              DropDownValueModel(value: 'Nairobi', name: 'Nairobi'),
              DropDownValueModel(value: 'Mombasa', name: 'Mombasa'),
              DropDownValueModel(value: 'Kisumu', name: 'Kisumu'),
            ],
          ),
        ],
      ),
    );
  }
}
