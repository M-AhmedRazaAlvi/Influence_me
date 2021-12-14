import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/icon_images.dart';
import 'package:influence_me/utils/images.dart';

class Chat21 extends StatefulWidget {
  const Chat21({Key? key}) : super(key: key);

  @override
  _Chat21State createState() => _Chat21State();
}

class _Chat21State extends State<Chat21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: AppColors.redColor),
        title: Text("Diana Fields",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        actions: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
                cardColor: Color(0xffF9F9F9),
                iconTheme: IconThemeData(color: Colors.black)),
            child: PopupMenuButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Mute Notifications"),
                              Text(
                                "Delete chat",
                                style: TextStyle(color: AppColors.redColor),
                              ),
                              Text("Report user"),
                              Text("Block user"),
                              Text("Cancel"),
                            ],
                          ),
                        ),
                      ),
                    ]),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        color: AppColors.textGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Today",
                      style: TextStyle(color: Colors.white),
                    )),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 45),
                    padding: EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 30),
                    decoration: BoxDecoration(
                        color: AppColors.lightskin,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello!"),
                        SizedBox(height: 5),
                        Text("09:41 AM",
                            style: TextStyle(
                                color: AppColors.textGrey, fontSize: 10)),
                      ],
                    ),
                  ),
                ),
                TextLeftWidget(
                  text1: "How you doin? everything okay?",
                  text2: "09.41 AM",
                ),
                DianaTextWidget(
                    width1: MediaQuery.of(context).size.width * 0.25,
                    text1: 'Hey!',
                    text2: '09:45 AM'),
                DianaTextWidget(
                    width1: MediaQuery.of(context).size.width * 0.52,
                    text1:
                        'Nohing much. trying to design\n         a new UI for UI Challange',
                    text2: '09:45 AM'),
                DianaTextWidget(
                    width1: MediaQuery.of(context).size.width * 0.3,
                    text1: 'whatcha up to?',
                    text2: '09:46 AM'),
                TextLeftWidget(
                    text1:
                        "Sound good! Explore our open\nchallenges and submit your work!",
                    text2: "09.48 AM"),
                DianaTextWidget(
                    width1: MediaQuery.of(context).size.width * 0.22,
                    text1: 'Okey!',
                    text2: '09:45 AM'),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(top: 100),
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.black12))),
                  child: Row(
                    children: [
                      Image.asset(IconImages.Emoji, width: 27, height: 27),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.77,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              border: InputBorder.none,
                              hintText: "Type your message",
                              fillColor: Colors.white),
                        ),
                      ),
                      Image.asset(IconImages.sending, width: 27, height: 27),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class TextLeftWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const TextLeftWidget({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Image(image: AssetImage(Images.diana_fields), width: 35, height: 35),
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
                color: AppColors.lightskin,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1),
                SizedBox(height: 5),
                Text(text2,
                    style: TextStyle(color: AppColors.textGrey, fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DianaTextWidget extends StatelessWidget {
  final width1;
  final String text1;
  final String text2;
  const DianaTextWidget({
    Key? key,
    this.width1,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: width1,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration: BoxDecoration(
            color: AppColors.redColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text1, style: TextStyle(color: Colors.white)),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(text2,
                    style: TextStyle(color: Colors.white70, fontSize: 10)),
                SizedBox(width: 7),
                Icon(Icons.done_all, size: 16, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
