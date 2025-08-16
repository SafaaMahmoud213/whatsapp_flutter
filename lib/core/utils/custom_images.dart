import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CustomImage extends StatelessWidget {
  String url;
  double? width;
  double? height;
  BoxFit? fit;
  Color? color;
  CustomImage({
    super.key,
    this.height,
    this.fit,
    required this.url,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (url.endsWith("svg")) {
      return SvgPicture.asset(url, width: width?.w, height: height?.h);
    }
    return Image.asset(
      url,
      height: height?.h,
      color: color,
      width: width?.w,
      fit: fit,
      errorBuilder:
          (context, error, stackTrace) =>
              Image.asset("assets/images/error.png", width: 20, height: 20),
    );
  }
}
