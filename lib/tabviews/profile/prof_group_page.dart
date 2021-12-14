import 'dart:core';

import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/images.dart';

class ProfileGroupPage extends StatelessWidget {
  const ProfileGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          QuestWidget(
              imgUrl: Images.olofsson,
              textName: "Meybeline",
              text1: "Body Oil",
              text2: "Facial Serum",
              text3: "Completed"),
          QuestWidget(
              imgUrl: Images.Jimmy,
              textName: "Jimmy Dean",
              text1: "Human",
              text2: "Food Images",
              text3: "Cancel"),
          QuestWidget(
              imgUrl: Images.Gym,
              textName: "Boxed Water",
              text1: "Drink",
              text2: "Exercise",
              text3: "Completed"),
          QuestWidget(
              imgUrl: Images.apple_phone,
              textName: "Apple",
              text1: "Cell phone",
              text2: "Technology",
              text3: "Completed"),
        ],
      ),
    );
  }
}

class QuestWidget extends StatelessWidget {
  QuestWidget({
    Key? key,
    required this.imgUrl,
    required this.textName,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);
  final String imgUrl;
  final String textName;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: MediaQuery.of(context).size.height * 0.12,
      // padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imgUrl, width: 100, height: 100),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(textName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("United Kigdom",
                      style: TextStyle(color: AppColors.textGrey)),
                  Row(
                    children: [
                      Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(text1,
                              style: TextStyle(color: AppColors.textGrey))),
                      SizedBox(width: 8),
                      Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(text2,
                              style: TextStyle(color: AppColors.textGrey))),
                    ],
                  ),
                  Text("13 Jan,13:00",
                      style: TextStyle(color: AppColors.textGrey))
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.more_vert, size: 40),
                ],
              ),
              Text("+3 more", style: TextStyle(color: AppColors.textGrey)),
              Text(text3, style: TextStyle(color: AppColors.textGrey)),
            ],
          ),
        ],
      ),
    );
  }
}
