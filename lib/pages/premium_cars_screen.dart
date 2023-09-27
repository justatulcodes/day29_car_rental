import 'package:day29_car_rental/data/cars_sample_data.dart';
import 'package:day29_car_rental/data/values.dart';
import 'package:day29_car_rental/list_items/premium_cars_list_item.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_icon.dart';
import '../widgets/custom_text.dart';
import '../widgets/spacer.dart';

class PremiumCarsScreen extends StatelessWidget {
  const PremiumCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surfaceBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //date and list view type row
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        customText("Choose date", 10, textGrey),
                        customSpacer(0, 3),
                        customIconSvg("calender.svg", 12, textGrey),
                      ],
                    ),
                    customSpacer(8, 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customIconSvg("green_checkmark.svg", 15, surfaceGreen),
                        customSpacer(0, 5),
                        customText("Today, 13 May", 14, textWhite),
                        customSpacer(0, 5),
                        customIconIconData(
                            Icons.keyboard_arrow_down_rounded, 20, textWhite),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                customIconButtonSvg(
                    "list_view.svg", () => null, 25, textWhite, 0),
                customIconButtonSvg(
                    "grid_view.svg", () => null, 18, textGrey, 0)
              ],
            ),
          ),

          Expanded(
              child: ScrollConfiguration(
            behavior:
                const MaterialScrollBehavior().copyWith(overscroll: false),
            child: ListView.builder(
                            
              physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return rentCarListItem(sampleDataList[index], context);
              },
              itemCount: sampleDataList.length,
            ),
          ))
        ],
      ),
    );
  }
}
