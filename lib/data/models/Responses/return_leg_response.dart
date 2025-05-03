import 'package:truck_booking/core/app_export.dart';

class ReturnLegResponse {
  final String image;
  final String owner;       // Use as contact or owner name
  final String price;       // Can be truck type or rate
  final bool available;
  final String location;    // Combine from/to or just destination

  const ReturnLegResponse({
    required this.image,
    required this.owner,
    required this.price,
    required this.available,
    required this.location,
  });

  static List<ReturnLegResponse> returnLegList = [
    ReturnLegResponse(
      image: ImageConstant.mitsubishi,
      owner: '+254794183126',
      price: 'FRR', // assuming FRR is the truck type
      available: true,
      location: 'Kisumu → Nairobi\nNovember 15, 2024',
    ),
    ReturnLegResponse(
      image: ImageConstant.tata,
      owner: '+254700112233',
      price: 'Isuzu Giga',
      available: true,
      location: 'Eldoret → Mombasa\nNovember 18, 2024',
    ),
    ReturnLegResponse(
      image: ImageConstant.vannette,
      owner: '+254721445566',
      price: 'FH',
      available: false,
      location: 'Nakuru → Nairobi\nNovember 20, 2024',
    ),
  ];
}
