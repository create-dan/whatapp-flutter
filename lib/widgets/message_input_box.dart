// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class MessageInputBox extends StatelessWidget {
  const MessageInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 15,
              ),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: 'Type a Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 20,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
