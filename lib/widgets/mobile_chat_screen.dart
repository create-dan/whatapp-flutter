// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/widgets/chat_list.dart';

import '../info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['text'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        //CHAT lIST
        children: [
          Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.emoji_emotions, color: Colors.grey),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.grey),
                    Icon(Icons.attach_file, color: Colors.grey),
                    Icon(Icons.money, color: Colors.grey),
                  ],
                ),
              ),
              hintText: 'Message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ],
        //TEXT INPUT
      ),
    );
  }
}
