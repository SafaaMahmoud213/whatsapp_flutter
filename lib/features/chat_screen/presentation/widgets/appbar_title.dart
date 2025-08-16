import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/custom_text_style.dart';
import 'package:whats_app/core/utils/extension_sizedbox.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key, required this.assetName, required this.text});
  final String text;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 18, backgroundImage: AssetImage(assetName)),
        6.wi,
        Text(
          text,
          style: CustomTextStyle.text12boldgrey.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
