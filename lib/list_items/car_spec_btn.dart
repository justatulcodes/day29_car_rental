import 'package:day29_car_rental/data/values.dart';
import 'package:day29_car_rental/widgets/custom_icon.dart';
import 'package:day29_car_rental/widgets/spacer.dart';
import 'package:flutter/material.dart';

Widget carSpecCard(String mainText, String infoText, String icon) {
  return SizedBox(
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: const Color(0xFF212126),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customIconSvg(icon, 20, Colors.white),
            customSpacer(10, 0),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: mainText,
                style: const TextStyle(
                    fontSize: 20,
                    color: textWhite,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins"),
              ),
              WidgetSpan(child: customSpacer(0, 5)),
              TextSpan(
                text: infoText,
                style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white38,
                    fontWeight: FontWeight.w500),
              ),
            ]))
          ],
        ),
      ),
    ),
  );
}
