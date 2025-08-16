import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_images.dart';
import 'package:whats_app/core/constant/custom_text_style.dart';

// ignore: must_be_immutable
class UpdateBody extends StatelessWidget {
  UpdateBody({super.key, required this.colors});
  final Color colors;
  List<String> image = [
    AppImages.person2,
    AppImages.person1,
    AppImages.person3,
    AppImages.person4,
    AppImages.person1,
  ];
  List<String> name = [
    "Safaa Mahmoud",
    "Rehab Megahed",
    "Azza Salah",
    "Samia Ahmed",
    "Shams Ashraf",
  ];
  List<String> time = ["22h ago", "10h ago", "8h ago", "12h ago", "20h ago"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: image.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListTile(
            leading: DottedBorder(
              options: CircularDottedBorderOptions(
                padding: EdgeInsets.all(3),
                strokeWidth: 1.5,
                color: colors,
                dashPattern:
                    index == 1 || index == 3 || index == 5 ? [24, 3] : [15, 9],
              ),
              child: CircleAvatar(backgroundImage: AssetImage(image[index])),
            ),
            title: Text(name[index]),
            subtitle: Text(time[index], style: CustomTextStyle.text12boldgrey),
          ),
        );
      },
    );
  }
}
