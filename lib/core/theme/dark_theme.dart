import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_colors.dart';

ThemeData darkThemeData = ThemeData(
  useMaterial3: true,
  fontFamily: 'Cairo',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.darkBackground,

  colorScheme: ColorScheme.fromSeed(
    primary: AppColor.whatsAppGreenDark,
    seedColor: AppColor.whatsAppGreenDark,
    brightness: Brightness.dark,
  ),
);
