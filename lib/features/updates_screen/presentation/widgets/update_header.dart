import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_images.dart';

class UpdateHeader extends StatelessWidget {
  const UpdateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: DottedBorder(
        options: CircularDottedBorderOptions(dashPattern: [24, 3]),
        child: CircleAvatar(backgroundImage: AssetImage(AppImages.person2)),
      ),
      title: Text("My Status"),
      trailing: CircleAvatar(
        radius: 15,
        child: Icon(CupertinoIcons.camera_fill, size: 16, color: Colors.black),
      ),
      subtitle: Text("22h ago"),
    );
  }
}
