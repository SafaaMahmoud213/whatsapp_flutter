import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/core/constant/custom_text_style.dart';

class CustomTextUpdate extends StatelessWidget {
  const CustomTextUpdate({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 10),
      child: Text(
        text,
        style: CustomTextStyle.text12boldgrey.copyWith(fontSize: 15.sp),
      ),
    );
  }
}
