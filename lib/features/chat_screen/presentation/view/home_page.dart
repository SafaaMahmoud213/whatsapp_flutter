import 'package:audioplayers/audioplayers.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration? duration = Duration();
  Duration? position = Duration();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          BubbleSpecialThree(
            text: 'Please try and give some feedback on it!',
            color: Color(0xFF1B97F3),
            tail: true,
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
          ),
          MessageBar(
            onSend: (ind) => print(ind),
            actions: [
              InkWell(
                child: Icon(Icons.add, color: Colors.black, size: 24),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: Icon(Icons.camera_alt, color: Colors.green, size: 24),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
