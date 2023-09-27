import 'package:flutter/material.dart';

Widget customText(String text, double size, Color color,
    [FontWeight weight = FontWeight.w600]) {
  return Text(
    text,
    style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontFamily: "Poppins"),
  );
}
