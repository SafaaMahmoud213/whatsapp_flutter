import 'package:flutter/material.dart';
import 'package:whats_app/core/constant/app_images.dart';
import 'package:whats_app/features/chat_screen/presentation/widgets/appbar_title.dart';
import 'package:whats_app/features/chat_screen/presentation/widgets/chat1_body.dart';

class Chat1Screen extends StatefulWidget {
  const Chat1Screen({super.key});

  @override
  State<Chat1Screen> createState() => _Chat1ScreenState();
}

class _Chat1ScreenState extends State<Chat1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, size: 15, color: Colors.black),
        ),
        title: AppbarTitle(text: "SafaaMahmoud", assetName: AppImages.person2),
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
      body: Chat1Body(),
    );
  }
}
