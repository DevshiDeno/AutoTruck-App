import 'package:truck_booking/core/utils/image_constant.dart';

class TruckModelResponse {
  final String image;
  final String owner;
  final String phoneNumber;
  final String price;
  final bool available;
  final String location;
  final String description;
  final String max_load;
  final String type;
  final bool isVerified;

  const TruckModelResponse({
    required this.isVerified,
    required this.image,
    required this.owner,
    required this.phoneNumber,
    required this.price,
    required this.available,
    required this.description,
    required this.max_load,
    required this.type,
    required this.location,
  });

  static List<TruckModelResponse> dummyList = [
    TruckModelResponse(
      image: ImageConstant.tata,
      owner: 'Fleet Masters',
      price: '3000 KES/day',
      available: true,
      description: '6-wheel truck with large cargo area.',
      max_load: '10 tons',
      location: 'Nairobi',
      phoneNumber: "0752522555",
      type: 'cover',
      isVerified: true,
    ),
    TruckModelResponse(
      image: ImageConstant.vannette,
      owner: 'Logistics Kenya',
      price: '3500 KES/day',
      available: true,
      description: 'Heavy-duty truck for long-distance hauling.',
      max_load: '15 tons',
      location: 'Mombasa',
      phoneNumber: "0752522555",
      type: 'open',
      isVerified: true,
    ),
    TruckModelResponse(
      image: ImageConstant.vannette,
      owner: 'Logistics Kenya',
      price: '3500 KES/day',
      available: true,
      description: 'Heavy-duty truck for long-distance hauling.',
      max_load: '15 tons',
      location: 'Mombasa',
      phoneNumber: "0752522555",
      type: 'open',
      isVerified: false,
    ),
    TruckModelResponse(
      image: ImageConstant.vannette,
      owner: 'Logistics Kenya',
      price: '3500 KES/day',
      available: true,
      description: 'Heavy-duty truck for long-distance hauling.',
      max_load: '15 tons',
      location: 'Mombasa',
      phoneNumber: "0752522555",
      type: 'cover',
      isVerified: true,
    ),
    TruckModelResponse(
      image: ImageConstant.tata,
      owner: 'Logistics Kenya',
      price: '3500 KES/day',
      available: true,
      description: 'Heavy-duty truck for long-distance hauling.',
      max_load: '15 tons',
      location: 'Mombasa',
      phoneNumber: "0752522555",
      type: 'open',
      isVerified: true,
    ),
    TruckModelResponse(
      image: ImageConstant.mitsubishi,
      owner: 'Logistics Kenya',
      price: '3500 KES/day',
      available: true,
      description: 'Heavy-duty truck for long-distance hauling.',
      max_load: '15 tons',
      location: 'Mombasa',
      phoneNumber: "0752522555",
      type: 'cover',
      isVerified: false,
    ),
  ];
}
