import 'dart:ui';

import 'package:day29_car_rental/data/cars_sample_data.dart';
import 'package:day29_car_rental/data/values.dart';
import 'package:day29_car_rental/list_items/car_spec_btn.dart';
import 'package:day29_car_rental/widgets/custom_icon.dart';
import 'package:day29_car_rental/widgets/custom_profile_icon.dart';
import 'package:day29_car_rental/widgets/custom_text.dart';
import 'package:day29_car_rental/widgets/spacer.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key, required this.car});
  final RentedCarSpecs car;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: surfaceBlack,
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ScrollConfiguration(
                behavior: const MaterialScrollBehavior()
                    .copyWith(overscroll: false),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.fast
                  ),
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      width: double.maxFinite,
                      height: 550,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: car.backgroundColor,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            width: double.maxFinite,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          customText(
                                              "Car Details", 15, surfaceBlack)
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          customIconButtonSvg("tune.svg",
                                              () => null, 20, surfaceBlack)
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          customIconButtonIconData(
                                              Icons.arrow_back_ios_new,
                                              () => {Navigator.pop(context)},
                                              20,
                                              surfaceBlack)
                                        ],
                                      )
                                    ],
                                  ),
                                  customSpacer(10, 0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      customText("Model", 10, Colors.black54),
                                      customSpacer(0, 3),
                                      customText("360°", 12, surfaceBlack,
                                          FontWeight.bold)
                                    ],
                                  ),
                                  customSpacer(30, 0),
                                  Image.asset(
                                    "assets/images/${car.frontViewImageAddress}",
                                    height: 180,
                                    isAntiAlias: true,
                                    filterQuality: FilterQuality.low,
                                  ),
                                  customSpacer(30, 0),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      customIconIconData(
                                          Icons.circle_outlined,
                                          25,
                                          car.carColor),
                                      customIconIconData(
                                          Icons.circle, 16, car.carColor),
                                    ],
                                  ),
                                  customSpacer(10, 0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      profileCircle(30, car.logoAddress),
                                      customSpacer(0, 10),
                                      customText(car.carModal, 22,
                                          surfaceBlack, FontWeight.w500)
                                    ],
                                  ),
                                  customSpacer(20, 0),
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                        text: car.carDescription,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      WidgetSpan(
                                          child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 3, right: 3),
                                          child: customIconSvg(
                                              "shield.svg", 10, surfaceBlack),
                                        ),
                                      )),
                                      const TextSpan(
                                        text:
                                            "For your safety we recommend not exceeding the speed limit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: surfaceBlack,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ]),
                                  ),
                                  customSpacer(15, 0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Card(
                                        elevation: 0,
                                        color: car.backgroundColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          side: const BorderSide(
                                              width: 0.5,
                                              color: Colors.black26),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Row(children: [
                                            customSpacer(0, 5),
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(0),
                                                  child: Card(
                                                      elevation: 0,
                                                      color:
                                                          car.backgroundColor,
                                                      margin: const EdgeInsets
                                                          .all(0),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(2),
                                                        child: profileCircle(
                                                            22,
                                                            car.reviewersProfileImage[
                                                                0]),
                                                      )),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Card(
                                                      elevation: 0,
                                                      color:
                                                          car.backgroundColor,
                                                      margin: const EdgeInsets
                                                          .all(0),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(2),
                                                        child: profileCircle(
                                                            22,
                                                            car.reviewersProfileImage[
                                                                1]),
                                                      )),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40),
                                                  child: Card(
                                                      elevation: 0,
                                                      color:
                                                          car.backgroundColor,
                                                      margin: const EdgeInsets
                                                          .all(0),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(2),
                                                        child: profileCircle(
                                                            22,
                                                            car.reviewersProfileImage[
                                                                2]),
                                                      )),
                                                ),
                                              ],
                                            ),
                                            customSpacer(0, 10),
                                            customText(
                                                car.ratingOutOfFive
                                                    .toString(),
                                                18,
                                                surfaceBlack,
                                                FontWeight.w700),
                                            const Spacer(),
                                            customText(
                                                "Reviews", 12, surfacePurple),
                                            customSpacer(0, 5),
                                            customIconSvg(
                                                "arrow_forward_circle.svg",
                                                12,
                                                surfacePurple),
                                            customSpacer(0, 5),
                                          ]),
                                        ),
                                      ))
                                    ],
                                  )
                                ]),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: carSpecCard(car.kmTravelled.toString(),
                                "km", "battery_charging.svg"),
                          ),
                          Expanded(
                            flex: 1,
                            child: carSpecCard(car.maxSpeed.toString(),
                                "km/h", "speedometer.svg"),
                          ),
                          Expanded(
                              flex: 1,
                              child: carSpecCard(car.horsePower.toString(),
                                  "kw", "flame.svg")),
                        ],
                      ),
                    ),
                    customSpacer(80, 0)
                  ]),
                ),
              ),
              ClipRRect(
                child: Card(
                  margin: EdgeInsets.zero,
                  color: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 70,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            customText("\$${car.rentalPrice}", 25, textWhite,
                                FontWeight.w700),
                            customSpacer(0, 6),
                            customText("/1 day", 10, Colors.grey.shade700,
                                FontWeight.w600),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: surfacePurple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Book Car",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    customSpacer(0, 5),
                                    customIconIconData(
                                        Icons.arrow_forward, 16, Colors.white)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
