// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Expanded(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.25,
          padding: const EdgeInsets.all(10),
          // color: Colors.grey,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: dividerColor,
              ),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: searchBarColor,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
              hintStyle: TextStyle(fontSize: 14),
              hintText: 'Search or start new chat',
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
        ),
      ),
    );
  }
}
