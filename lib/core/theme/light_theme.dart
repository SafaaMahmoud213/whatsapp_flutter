import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Cairo',
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColor.whatsAppGreen,
    primary: AppColor.whatsAppGreen,
    secondary: AppColor.lightBackground,
    brightness: Brightness.light,
  ),
);
