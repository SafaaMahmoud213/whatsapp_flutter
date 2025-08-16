import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/core/constant/app_images.dart';
import 'package:whats_app/features/chat_screen/presentation/widgets/appbar_title.dart';
import 'package:whats_app/features/chat_screen/presentation/widgets/chat_list.dart';
import 'package:whats_app/features/chat_screen/presentation/widgets/chat_model.dart';

class Chat1Screen extends StatefulWidget {
  const Chat1Screen({super.key});

  @override
  State<Chat1Screen> createState() => _Chat1ScreenState();
}

class _Chat1ScreenState extends State<Chat1Screen> {
  TextEditingController controller = TextEditingController();

  String myname = "chat1";

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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chat.length,
              itemBuilder: (context, index) {
                return BubbleSpecialThree(
                  sent: chat[index].senderName == myname ? true : false,
                  text: chat[index].text,
                  color:
                      chat[index].senderName == myname
                          ? Color.fromARGB(255, 5, 236, 128)
                          : Color.fromARGB(255, 67, 99, 245),
                  tail: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, left: 8, right: 8, top: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),

            child: Row(
              children: [
                GestureDetector(
                  child: Icon(Icons.add, color: Colors.black, size: 24),
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: GestureDetector(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.green,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50.h,
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white24),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.send, color: Colors.blue, size: 24),
                  ),
                  onTap: () {
                    if (controller.text.trim().isNotEmpty) {
                      setState(() {
                        chat.add(ChatModel(controller.text, myname));
                        controller.text = "";
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
