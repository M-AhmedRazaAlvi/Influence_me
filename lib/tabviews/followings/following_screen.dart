import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/followings/followers.dart';
import 'package:influence_me/tabviews/followings/following.dart';
import 'package:influence_me/utils/app_colors.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({Key? key}) : super(key: key);

  @override
  _FollowingScreenState createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
              height: 40,
              width: 40,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black12)),
              child: Icon(Icons.arrow_back, color: Colors.black)),
          title: Text("Influence Me",
              style: TextStyle(color: Colors.black, fontSize: 18)),
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
              labelColor: AppColors.redColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppColors.redColor,
              tabs: [
                Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text("Following")),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text("Followers"),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Following(),
            ////////////////////////////////////////////////
            Followers(),
          ],
        ),
      ),
    );
  }
}
