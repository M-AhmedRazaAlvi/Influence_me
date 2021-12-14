import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/images.dart';
import 'package:influence_me/widget/search_bar.dart';

class Followers extends StatefulWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            SearchbarWidget(),
            FollowBackWidget(
                text1: "Alina Finiti", imgUrl1: Images.alina_finiti),
            FollowBackWidget(
                text1: "Diana Fields", imgUrl1: Images.diana_fields),
            FollowBackWidget(text1: "Ann Garza", imgUrl1: Images.ann_garza),
            FollowBackWidget(
                text1: "Alina Finiti", imgUrl1: Images.alina_finiti2),
          ],
        ),
      ),
    );
  }
}

class FollowBackWidget extends StatelessWidget {
  final String text1;
  final imgUrl1;
  const FollowBackWidget({
    Key? key,
    required this.text1,
    this.imgUrl1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(image: AssetImage(imgUrl1)),
              SizedBox(width: 10),
              Text(text1)
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: AppColors.redColor,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Follow back",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
