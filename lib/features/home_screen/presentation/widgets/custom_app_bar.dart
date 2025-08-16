import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.ellipsis),

          style: IconButton.styleFrom(
            backgroundColor: Colors.grey.shade100,
            foregroundColor: Colors.black,
            padding: EdgeInsets.zero,
            fixedSize: Size(20, 20),
            iconSize: 20,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.camera_fill),

          style: IconButton.styleFrom(
            backgroundColor: Colors.grey.shade100,
            foregroundColor: Colors.black,
            padding: EdgeInsets.zero,
            fixedSize: Size(20, 20),
            iconSize: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.add),

          style: IconButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.zero,

            iconSize: 20,
          ),
        ),
      ],
    );
  }
}
