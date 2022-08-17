import 'package:flutter/material.dart';

class AppColor {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color blueGrey = Color(0xFFA9C9CD);
  static const Color red = Color(0xFFFB0505);
  static const Color green = Color(0xFF30D158);
  static const Color offWhite = Color(0xFFF4F4F4);
  static Color fillTextField = Color.fromRGBO(217, 217, 217, 0.4);
  static Color lightBlue = Color.fromRGBO(91, 185, 238, 1);
  static const Color grey = Colors.grey;

  static const Color containerBG = Color(0xFFF8F8F8);
  static const Color yellow = Color(0xFFFFC122);
  static const Color surface = Color(0xFFF9F9F9);
  static const Color pink = Color(0xFFFFF3F1);
  static const Color buttonColor = Color(0xFF00C2FF);
  static const Color buttonSecondColor = Color(0xFF1C87A9);
  static const Color chatColor = Color(0xFF119ECA);
  static const Color starColor = Color(0xFFED8A19);
  static const Color locationRedColor1 = Color(0xFFFF0000);
  static const Color locationRedColor2 = Color(0xFFA91C1C);
  static const Color rideHistoryFontColor = Color(0xFF242E42);
  static const Color trackFontColor = Color(0xFF4252FF);
  static const Color parbel = Color(0xFF4252FF);
  static const Color blue = Color(0xFF4780A8);
  static const Color drawerIcon = Color.fromARGB(255, 136, 136, 136);
}

class AppGradient {
  static LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF2587A5), Color.fromRGBO(0, 194, 255, 0.49)],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
