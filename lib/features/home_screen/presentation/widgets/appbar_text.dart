import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/custom_text_style.dart';

class AppbarText extends StatelessWidget {
  const AppbarText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Padding(
        padding: const EdgeInsets.only(top: 55, left: 12, right: 12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            color: Colors.transparent,
            child: Text(text, style: CustomTextStyle.text25boldblack),
          ),
        ),
      ),
    );
  }
}
