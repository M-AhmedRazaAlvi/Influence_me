import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/images.dart';
import 'package:influence_me/widget/search_bar.dart';

class Following extends StatefulWidget {
  const Following({Key? key}) : super(key: key);

  @override
  _FollowingState createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            SearchbarWidget(),
            RemovingWidget(text: "Alina Finiti", imgUrl: Images.alina_finiti),
            RemovingWidget(text: "Diana Fields", imgUrl: Images.diana_fields),
            RemovingWidget(text: "Ann Garza", imgUrl: Images.ann_garza),
            RemovingWidget(text: "Alina Finiti", imgUrl: Images.alina_finiti2),
          ],
        ),
      ),
    );
  }
}

class RemovingWidget extends StatelessWidget {
  final String text;
  final imgUrl;
  const RemovingWidget({
    Key? key,
    required this.text,
    this.imgUrl,
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
              Image(image: AssetImage(imgUrl)),
              SizedBox(width: 10),
              Text(text)
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.redColor)),
            child: Text(
              "Remove",
              style: TextStyle(color: AppColors.redColor),
            ),
          )
        ],
      ),
    );
  }
}
