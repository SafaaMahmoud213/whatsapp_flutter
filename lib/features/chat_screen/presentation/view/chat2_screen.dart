import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_images.dart';
import 'package:whats_app/features/chat_screen/presentation/widgets/appbar_title.dart';
import 'package:whats_app/features/chat_screen/presentation/widgets/chat2_body.dart';

class Chat2Screen extends StatefulWidget {
  const Chat2Screen({super.key});

  @override
  State<Chat2Screen> createState() => _Chat2ScreenState();
}

class _Chat2ScreenState extends State<Chat2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, size: 15, color: Colors.black),
        ),
        title: AppbarTitle(text: "RehabMegahed", assetName: AppImages.person3),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone, size: 20, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_rounded, size: 20, color: Colors.black),
          ),
        ],
      ),
      body: Chat2Body(),
    );
  }
}
