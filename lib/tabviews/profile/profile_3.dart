import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/profile/profile_screen.dart';
import 'package:influence_me/utils/icon_images.dart';
import 'package:influence_me/utils/images.dart';
import 'package:influence_me/widget/color_button.dart';
import 'package:influence_me/widget/main_text.dart';
import 'package:influence_me/widget/tag_buttons.dart';

class Profile3 extends StatefulWidget {
  const Profile3({Key? key}) : super(key: key);

  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(Images.bgimage),
                                fit: BoxFit.cover))),
                    Positioned(
                      top: 230,
                      child: Stack(clipBehavior: Clip.none, children: [
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)))),
                        ////////////Manimage/////////////////////////////
                        Positioned(
                            top: -50,
                            left: 18,
                            child: Image(
                                image: AssetImage(Images.bgMen),
                                width: 120,
                                height: 120)),
                        Container(
                          margin: EdgeInsets.only(left: 150, top: 10),
                          width: MediaQuery.of(context).size.width * 0.56,
                          height: 60,
                          // color: Colors.grey,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("9",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text("Posts",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey))
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("200",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text("Followers",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey))
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("10",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text("Following",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 70, left: 15, right: 10),
                  child: Column(
                    children: [
                      MainText(text: 'Jhon Deo'),
                      Row(
                        children: [
                          Image(image: AssetImage(Images.russianflag)),
                          SizedBox(width: 10),
                          Text("Russia")
                        ],
                      ),
                      SizedBox(height: 10),
                      MainText(text: 'Discription'),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 15),
                        child: Text(
                          "In publishing and graphic design, Lorem ipsum is a\nplaceholder text com",
                        ),
                      ),
                      MainText(text: 'Category'),
                      Wrap(
                        verticalDirection: VerticalDirection.down,
                        runSpacing: -5,
                        spacing: 5,
                        children: [
                          TagButtons(
                            text: 'fashion',
                          ),
                          TagButtons(text: 'Sports'),
                          TagButtons(text: 'Design'),
                          TagButtons(text: 'Travel'),
                          TagButtons(text: 'Model'),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ColorsButtonWidget(text: "Follow"),
                            ColorsButtonWidget(text: "Message"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                    ],
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(IconImages.galleryColor)),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                primary: false,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 3,
                children: <Widget>[
                  Image(image: AssetImage(Images.Matthew)),
                  Image(image: AssetImage(Images.Serhiy)),
                  Image(image: AssetImage(Images.Thomas)),
                  Image(image: AssetImage(Images.Kermen)),
                  Image(image: AssetImage(Images.Farhan)),
                  Image(image: AssetImage(Images.Amir)),
                  Image(image: AssetImage(Images.Daniel)),
                  Image(image: AssetImage(Images.Serhiy)),
                  Image(image: AssetImage(Images.Pedram)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
