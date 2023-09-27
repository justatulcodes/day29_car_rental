import 'package:day29_car_rental/data/values.dart';
import 'package:day29_car_rental/pages/exclusive_cars_screen.dart';
import 'package:day29_car_rental/pages/premium_cars_screen.dart';
import 'package:day29_car_rental/widgets/custom_icon.dart';
import 'package:day29_car_rental/widgets/custom_profile_icon.dart';
import 'package:day29_car_rental/widgets/custom_text.dart';
import 'package:day29_car_rental/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


//https://dribbble.com/shots/21454677-Rental-Car
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: surfaceBlack));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: surfaceBlack,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Top Bar row
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                                "RentaX®", 18, textWhite, FontWeight.w400),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                customIconSvg("location.svg", 10, textBlue),
                                customSpacer(0, 5),
                                customText(
                                    "St. Celina, Delaware 102999", 10, textBlue)
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        customIconButtonSvg(
                            "bell.svg", () => null, 20, textWhite),
                        profileCircle(40, "profile6.jpg")
                      ],
                    ),
                  ),

                  customSpacer(5, 0),

                  //Tab bar
                  Expanded(
                    child: DefaultTabController(
                        animationDuration: const Duration(milliseconds: 400),
                        length: 2,
                        child: Scaffold(
                          backgroundColor: surfaceBlack,
                          appBar: AppBar(
                            title: customText(
                                "Premium \n& Rental Car", 35, textWhite),
                            toolbarHeight: 100,
                            backgroundColor: surfaceBlack,
                            bottom: const TabBar(
                              splashFactory: NoSplash.splashFactory,
                              indicatorColor: textWhite,
                              tabs: [
                                Tab(
                                  text: "Premium",
                                ),
                                Tab(
                                  text: "Exclusive",
                                )
                              ],
                            ),
                          ),
                          body: const TabBarView(
                            children: [
                              PremiumCarsScreen(),
                              ExclusiveCarScreen(),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
