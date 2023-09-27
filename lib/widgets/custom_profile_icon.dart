import 'package:flutter/material.dart';

Widget profileCircle(double size, String imageAddress) {
  return SizedBox(
    width: size,
    height: size,
    child: Card(
      elevation: 0,
      margin: const EdgeInsets.all(0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: ClipOval(
          child: Image.asset(
        "assets/images/$imageAddress",
        fit: BoxFit.cover,
      )),
    ),
  );
}
