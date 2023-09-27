import 'package:day29_car_rental/data/cars_sample_data.dart';
import 'package:day29_car_rental/data/values.dart';
import 'package:day29_car_rental/pages/car_details_page.dart';
import 'package:day29_car_rental/widgets/custom_icon.dart';
import 'package:day29_car_rental/widgets/custom_profile_icon.dart';
import 'package:day29_car_rental/widgets/custom_text.dart';
import 'package:day29_car_rental/widgets/spacer.dart';
import 'package:day29_car_rental/widgets/transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget rentCarListItem(RentedCarSpecs car, BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 0),
    width: double.maxFinite,
    height: 220,
    child: Card(
      color: car.backgroundColor,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    profileCircle(40, car.logoAddress),
                    customSpacer(0, 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            customText("Color: ", 11, Colors.black38),
                            customIconIconData(Icons.circle, 14, car.carColor),
                          ],
                        ),
                        customSpacer(2, 0),
                        customText(car.carModal, 14, textBlack)
                      ],
                    ),
                    const Spacer(),
                    customIconSvg("battery.svg", 18, surfaceBlack),
                    customSpacer(0, 5),
                    customText("${car.kmTravelled} km", 13, surfaceBlack)
                  ],
                ),
              ),
              customSpacer(2, 0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Card(
                              elevation: 0,
                              color: car.backgroundColor,
                              margin: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: profileCircle(
                                    22, car.reviewersProfileImage[0]),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Card(
                              elevation: 0,
                              color: car.backgroundColor,
                              margin: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: profileCircle(
                                    22, car.reviewersProfileImage[1]),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Card(
                              elevation: 0,
                              color: car.backgroundColor,
                              margin: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: profileCircle(
                                    22, car.reviewersProfileImage[2]),
                              )),
                        ),
                      ],
                    ),
                    customSpacer(0, 10),
                    customText(car.ratingOutOfFive.toString(), 18, surfaceBlack,
                        FontWeight.w700),
                  ],
                ),
              ),
              customSpacer(3, 0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: customText(
                    "${car.percentageRecommend}% Recommend", 12, surfaceBlack),
              ),
              customSpacer(15, 0),
              Expanded(
                child: SizedBox(
                  width: 170,
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(0))),
                    color: const Color(0xFF212126),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customText("1 day rental", 10, textGrey),
                              customSpacer(2, 0),
                              customText("\$${car.rentalPrice}", 20, textWhite),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  RightToLeftTransition(CarDetailsPage(car: car)));
                            },
                            icon: SvgPicture.asset(
                              "assets/svg/arrow_forward.svg",
                              height: 50,
                              width: 50,
                              color: textWhite,
                            ),
                            padding: const EdgeInsets.all(8),
                            splashRadius: 0.1,
                            splashColor: Colors.transparent,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/${car.sideViewImageAddress}",
                  height: 150,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
