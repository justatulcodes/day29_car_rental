import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget customIconButtonSvg(
    String svgAddress, Function() onClick, double size, Color color, [double padding = 8]) {
  return IconButton(
    onPressed: onClick,
    icon: SvgPicture.asset(
      "assets/svg/$svgAddress",
      height: size,
      width: size,
      color: color,
    ),
    padding: EdgeInsets.all(padding),
    splashRadius: 0.1,
    splashColor: Colors.transparent,
  );
}

Widget customIconButtonIconData(
    IconData icon, Function() onClick, double size, Color color) {
  return IconButton(
    onPressed: onClick,
    icon: Icon(
      icon,
      size: size,
      color: color,
    ),
    splashRadius: 0.1,
    splashColor: Colors.transparent,
  );
}

Widget customIconSvg(String svgAddress, double size, Color color) {
  return SvgPicture.asset(
    "assets/svg/$svgAddress",
    height: size,
    width: size,
    color: color,
  );
}

Widget customIconIconData(IconData icon, double size, Color color) {
  return Icon(
    icon,
    size: size,
    color: color,
  );
}
