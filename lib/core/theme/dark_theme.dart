import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_colors.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'Cairo',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColor.darkBackground,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),

  colorScheme: ColorScheme.fromSeed(
    primary: AppColor.darkChatBubble,
    seedColor: AppColor.darkSurface,
    secondary: AppColor.darkReceivedBubble,
    brightness: Brightness.dark,
  ),
);
