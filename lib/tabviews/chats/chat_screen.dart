import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/chats/offers.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/icon_images.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.arrow_back, color: AppColors.redColor),
          title: Text("Offers",
              style: TextStyle(color: Colors.black, fontSize: 25)),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset(IconImages.searching),
            )
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(
              labelColor: AppColors.redColor,
              unselectedLabelColor: Colors.black,
              indicatorColor: AppColors.redColor,
              tabs: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Offers",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Chat",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            ///////////   1    ////////////////////////////////
            OffersWidget(),
            ////////////  2    ////////////////////////////////////
            OffersWidget(),
            ////////////  3    //////////////////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}
