import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/edits_profile/dollar_price.dart';
import 'package:influence_me/tabviews/edits_profile/person_profile.dart';
import 'package:influence_me/tabviews/edits_profile/social_link.dart';

import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/icon_images.dart';
import 'package:influence_me/utils/images.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 300,
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Stack(clipBehavior: Clip.none, children: [
            Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(Images.bgimage), fit: BoxFit.cover))),
            Positioned(
                bottom: -60,
                right: 0,
                left: 0,
                child: Image(
                    image: AssetImage(Images.bgMen), width: 120, height: 120)),
            Positioned(
              top: 120,
              right: -20,
              left: 70,
              child: Image.asset(IconImages.plus),
            )
          ]),
          bottom: TabBar(
              labelColor: AppColors.redColor,
              unselectedLabelColor: Colors.black,
              indicatorColor: AppColors.redColor,
              tabs: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Image.asset(IconImages.person1,
                          width: 13, height: 16, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        "Profile",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Image.asset(IconImages.dollar, width: 13, height: 16),
                      SizedBox(width: 5),
                      Text(
                        "Price",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Image.asset(IconImages.social_media,
                          width: 13, height: 16),
                      SizedBox(width: 5),
                      Text(
                        "Social Links",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    ///////////   1    ////////////////////////////////
                    PersonProfile(),
                    ////////////  2    ////////////////////////////////////
                    DollarPriceWidget(),
                    ////////////  3    //////////////////////////////////////////////////////////////
                    SocialLinkWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
