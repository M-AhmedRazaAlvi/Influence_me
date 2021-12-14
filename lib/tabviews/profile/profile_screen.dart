import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/profile/gallery_page.dart';
import 'package:influence_me/tabviews/profile/prof_group_page.dart';
import 'package:influence_me/tabviews/profile/profile_widget.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/icon_images.dart';

import 'package:influence_me/widget/main_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileWidgets(),
              Container(
                margin: EdgeInsets.only(left: 15, top: 10, right: 10),
                child: Column(
                  children: [
                    MainText(text: 'Social Media'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SocialWidget(
                            icon: IconImages.Instagram,
                            text1: "Followers",
                            text2: '2.10K'),
                        SocialWidget(
                            icon: IconImages.facebook,
                            text1: "Followers",
                            text2: '3.20K'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SocialWidget(
                            icon: IconImages.tik_tok,
                            text1: "Followers",
                            text2: '5.0K'),
                        SocialWidget(
                            icon: IconImages.youtube,
                            text1: "Subscriber",
                            text2: '10K'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: TabBar(
                    labelColor: AppColors.redColor,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: AppColors.redColor,
                    tabs: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Image.asset(IconImages.gallery),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Image.asset(IconImages.group_page),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Image.asset(IconImages.ribbon),
                      ),
                    ]),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    ///////////   1    ////////////////////////////////
                    GalleryPage(),
                    ////////////  2    ////////////////////////////////////
                    ProfileGroupPage(),
                    ////////////  3    //////////////////////////////////////////////////////////////
                    GalleryPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final icon;
  const SocialWidget({
    Key? key,
    required this.text1,
    required this.text2,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.white,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.white)),
      child: Container(
        padding: EdgeInsets.only(left: 30, top: 10, bottom: 10),
        height: MediaQuery.of(context).size.height * 0.13,
        width: MediaQuery.of(context).size.width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Image.asset(icon),
                SizedBox(width: 10),
                Text("@jhondoe")
              ],
            ),
            Text(text1, style: TextStyle(color: Colors.grey)),
            Text(text2, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
