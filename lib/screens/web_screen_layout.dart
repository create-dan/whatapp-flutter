// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/chat_list.dart';
import 'package:whatsapp/widgets/contact_lists.dart';
import 'package:whatsapp/widgets/message_input_box.dart';
import 'package:whatsapp/widgets/web_chat_app_bar.dart';
import 'package:whatsapp/widgets/web_profile_bar.dart';
import 'package:whatsapp/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web profile
                  WebProfileBar(),
                  //web search
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //chat app bar
                WebChatAppBar(),

                //chat list
                Expanded(child: ChatList()),

                //message input box
                MessageInputBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
