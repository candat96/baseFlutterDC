import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// const Color ceriseRedColor = Color(0xffe03b5b);
// const Color pelorousBlueColor = Color(0xff45abba);
// const Color fuelYellowColor = Color(0xffeba828);
// const Color amberYellowColor = Color(0xffffc000);
// const Color altoGrayColor = Color(0xffd9d9d9);
// const Color azureBlueColor = Color(0xff336699);
// const Color scorpionGrayColor = Color(0xff00c2ff);
// const Color lightningYellowColor = Color(0xffffcc18);
// const Color galleryGrayColor = Color(0xffefefef);
// const Color studioPurpleColor = Color(0xff6e4abc);
// const Color frolyOrangeColor = Color(0xfff67070);
// const Color pictonBlueColor = Color(0xff45c2df);
// const Color jellyBeanBluecolor = Color(0xff287c9f);
// const Color silverChaliceColor = Color(0xffaaaaaa);
// const Color pirateGoldColor = Color(0xffcf8800);
// const Color brightTurquoiseColor = Color(0xff00c2ff);
// const Color zirconColor = Color(0xfff2f7ff);
// const Color scorpionBlueColor = Color(0xff565656);
// const Color frolyRedColor = Color(0xfff67070);
// const Color silverColor = Color(0xffbbbbbb);
// const Color boulderColor = Color(0xff777777);
// const Color registerGray = Color(0xFF888888);
List<BoxShadow> boxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.25),
    spreadRadius: 0,
    blurRadius: 4,
    offset: const Offset(0, 4),
  )
];

TextStyle textStyleBase = TextStyle(
    color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600);

class LightThemeColors {
  //dark swatch
  static const Color primaryColor = Color(0xffc18c8c);
  static const Color accentColor = Color(0xFFD9EDE1);

  //APPBAR
  static const Color appBarColor = primaryColor;

  //SCAFFOLD
  static const Color scaffoldBackgroundColor = Colors.white;
  static const Color backgroundColor = Colors.white;
  static const Color dividerColor = Color(0xff686868);
  static const Color cardColor = Color(0xfffafafa);

  //ICONS
  static const Color appBarIconsColor = Colors.white;
  static const Color iconColor = Colors.black;

  //BUTTON
  static const Color buttonColor = primaryColor;
  static const Color buttonTextColor = Colors.white;
  static const Color buttonDisabledColor = Colors.grey;
  static const Color buttonDisabledTextColor = Colors.black;

  //TEXT
  static const Color bodyTextColor = Color(0xff333333);
  static const Color headlinesTextColor = Color(0xff333333);
  static const Color captionTextColor = Color(0xff333333);
  static const Color hintTextColor = Color(0xff686868);
  static const Color highlightTextColor = Color(0xff5B9BD5);

  //chip
  static const Color chipBackground = primaryColor;
  static const Color chipTextColor = Colors.white;

  // progress bar indicator
  static const Color progressIndicatorColor = Color(0xFF40A76A);
}
