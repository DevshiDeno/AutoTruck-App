import '../../../core/utils/image_constant.dart';

class HeavyMachineryResponse {
  final String image;
  final String owner;
  final String price;
  final bool available;
  final String location;
  final String description;
  final String max_load;
  final bool isVerified;

  const HeavyMachineryResponse({
    required this.image,
    required this.owner,
    required this.price,
    required this.available,
    required this.description,
    required this.max_load,
    required this.location,
    required this.isVerified,
  });

  static List<HeavyMachineryResponse> dummyList = [
    HeavyMachineryResponse(
      image: ImageConstant.bulldozer,
      owner: 'Machinery Ltd',
      price: '5000 KES/day',
      available: true,
      description: 'Hydraulic Excavator for construction sites.',
      max_load: '25 tons',
      location: 'Thika',
      isVerified: true,
    ),
    HeavyMachineryResponse(
      image: ImageConstant.forklift,
      owner: 'BuildStrong Co.',
      price: '4500 KES/day',
      available: false,
      description: 'Bulldozer with 200hp engine.',
      max_load: '30 tons',
      location: 'Naivasha',
      isVerified: false,
    ),
    HeavyMachineryResponse(
      image: ImageConstant.graders,
      owner: 'Graders Co.',
      price: '4000 KES/day',
      available: false,
      description: 'Grader with 200hp engine.',
      max_load: '90 tons',
      location: 'Naivasha',
      isVerified: true,
    ),
  ];
}
