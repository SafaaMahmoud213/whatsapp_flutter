import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_colors.dart';

ThemeData lightThemeData = ThemeData(
  useMaterial3: true,
  fontFamily: 'Cairo',
  brightness: Brightness.light,

  scaffoldBackgroundColor: AppColor.lightBackground,
  colorScheme: ColorScheme.fromSeed(
    primary: AppColor.whatsAppGreen,
    seedColor: AppColor.whatsAppGreen,
    secondary: AppColor.lightChatBubble,
    brightness: Brightness.light,
  ),
);
