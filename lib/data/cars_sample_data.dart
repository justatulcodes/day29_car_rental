import 'package:day29_car_rental/data/values.dart';
import 'package:flutter/material.dart';

class RentedCarSpecs {
  String carModal;
  String logoAddress;
  int kmTravelled;
  int percentageRecommend;
  double ratingOutOfFive;
  Color carColor;
  int rentalPrice;
  String carDescription;
  Color backgroundColor;
  int maxSpeed;
  int horsePower;
  String frontViewImageAddress;
  String sideViewImageAddress;
  List<String> reviewersProfileImage;

  RentedCarSpecs({
    required this.backgroundColor,
    required this.carModal,
    required this.carColor,
    required this.carDescription,
    required this.frontViewImageAddress,
    required this.horsePower,
    required this.kmTravelled,
    required this.logoAddress,
    required this.maxSpeed,
    required this.percentageRecommend,
    required this.ratingOutOfFive,
    required this.rentalPrice,
    required this.reviewersProfileImage,
    required this.sideViewImageAddress,
  });
}

final sampleDataList = [
  // Lamborghini 1
  RentedCarSpecs(
    carModal: "Lamborghini Aventador",
    backgroundColor: surfaceYellow,
    carColor: Colors.blue.shade900,
    carDescription:
        "The Aventador is a masterpiece of engineering, delivering unparalleled power and precision. ",
    frontViewImageAddress: "lambo1_front.png",
    horsePower: 700,
    kmTravelled: 250,
    logoAddress: "lambo_logo.png",
    maxSpeed: 350,
    percentageRecommend: 90,
    ratingOutOfFive: 4.8,
    rentalPrice: 1500,
    reviewersProfileImage: _shuffleProfileImages(3),
    sideViewImageAddress: "lambo1_sideview.png",
  ),

  // Lamborghini 2
  RentedCarSpecs(
    backgroundColor: const Color(0xFFFF5C5C),
    carModal: "Lamborghini Huracan",
    carColor: Colors.yellow.shade600,
    carDescription:
        "The Lamborghini Huracan is the epitome of Italian craftsmanship and performance.",
    frontViewImageAddress: "lambo1_front.png",
    horsePower: 610,
    kmTravelled: 180,
    logoAddress: "lambo_logo.png",
    maxSpeed: 325,
    percentageRecommend: 88,
    ratingOutOfFive: 4.6,
    rentalPrice: 1200,
    reviewersProfileImage: _shuffleProfileImages(3),
    sideViewImageAddress: "lambo2_sideview.png",
  ),

  // Lamborghini 3
  RentedCarSpecs(
    backgroundColor: const Color(0xFF5CD1FF),
    carModal: "Lamborghini Urus",
    carColor: Colors.lightGreen.shade400,
    carDescription:
        "The Lamborghini Urus is the world's first Super Sport Utility Vehicle.",
    frontViewImageAddress: "lambo1_front.png",
    horsePower: 650,
    kmTravelled: 320,
    logoAddress: "lambo_logo.png",
    maxSpeed: 305,
    percentageRecommend: 85,
    ratingOutOfFive: 4.5,
    rentalPrice: 1300,
    reviewersProfileImage: _shuffleProfileImages(3),
    sideViewImageAddress: "lambo3_sideview.png",
  ),

  // Porsche 1
  RentedCarSpecs(
    backgroundColor: const Color(0xFF5C87FF),
    carModal: "Porsche 911 GT3",
    carColor: Colors.white54,
    carDescription:
        "The Porsche 911 GT3 is a purebred sports car designed to deliver thrills on the track and comfort on the road.",
    frontViewImageAddress: "porsche1_front.png",
    horsePower: 300,
    kmTravelled: 570,
    logoAddress: "porsche_logo.jpg",
    maxSpeed: 250,
    percentageRecommend: 82,
    ratingOutOfFive: 4.3,
    rentalPrice: 900,
    reviewersProfileImage: _shuffleProfileImages(3),
    sideViewImageAddress: "porsche1_sideview.png",
  ),

  // Porsche 2
  RentedCarSpecs(
    backgroundColor: const Color(0xFFFFE45C),
    carModal: "Porsche 911 Turbo S",
    carColor: Colors.red,
    carDescription:
        "The Porsche 911 Turbo S is the epitome of high-performance engineering.",
    frontViewImageAddress: "porsche1_front.png",
    horsePower: 640,
    kmTravelled: 420,
    logoAddress: "porsche_logo.jpg",
    maxSpeed: 330,
    percentageRecommend: 87,
    ratingOutOfFive: 4.7,
    rentalPrice: 1100,
    reviewersProfileImage: _shuffleProfileImages(3),
    sideViewImageAddress: "porsche2_sideview.png",
  ),

  // Porsche 3
  RentedCarSpecs(
    backgroundColor: const Color(0xFFFF5CA8),
    carModal: "Porsche Cayenne",
    carColor: Colors.lightGreen.shade400,
    carDescription:
        "The Porsche Cayenne is a luxury SUV that doesn't compromise on performance.",
    frontViewImageAddress: "porsche1_front.png",
    horsePower: 450,
    kmTravelled: 500,
    logoAddress: "porsche_logo.jpg",
    maxSpeed: 280,
    percentageRecommend: 86,
    ratingOutOfFive: 4.6,
    rentalPrice: 1000,
    reviewersProfileImage: _shuffleProfileImages(3),
    sideViewImageAddress: "porsche3_sideview.png",
  ),

  // Porsche 4
  RentedCarSpecs(
    backgroundColor: const Color(0xFF5CFFD6),
    carModal: "Porsche Taycan",
    carColor: Colors.lightBlue.shade900,
    carDescription:
        "The Porsche Taycan is an all-electric sports car that redefines sustainability and performance. ",
    frontViewImageAddress: "porsche1_front.png",
    horsePower: 670,
    kmTravelled: 200,
    logoAddress: "porsche_logo.jpg",
    maxSpeed: 260,
    percentageRecommend: 84,
    ratingOutOfFive: 4.4,
    rentalPrice: 1300,
    reviewersProfileImage: _shuffleProfileImages(3),
    sideViewImageAddress: "porsche4_sideview.png",
  ),
];

List<String> _shuffleProfileImages(int count) {
  final profileImages = List.generate(10, (index) => 'profile${index + 1}.jpg');
  profileImages.shuffle();
  return profileImages.sublist(0, count);
}
