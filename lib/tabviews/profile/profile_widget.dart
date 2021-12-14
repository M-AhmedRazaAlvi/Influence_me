import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/icon_images.dart';
import 'package:influence_me/utils/images.dart';
import 'package:influence_me/widget/main_text.dart';
import 'package:influence_me/widget/tag_buttons.dart';

class ProfileWidgets extends StatelessWidget {
  const ProfileWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(Images.bgimage), fit: BoxFit.cover))),
            /////////////settingicon////////////////////////////
            Positioned(
                top: 50,
                right: 30,
                child: InkWell(
                    onDoubleTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ShowProfileWidget(
                                      textName: "Edit Profile",
                                      icons: IconImages.pen),
                                  ShowProfileWidget(
                                      textName: "Payment Method",
                                      icons: IconImages.wallet),
                                  ShowProfileWidget(
                                      textName: "Terms & Conditions",
                                      icons: IconImages.terms),
                                  ShowProfileWidget(
                                      textName: "Privacy Policy",
                                      icons: IconImages.privacy),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(IconImages.Logout),
                                      SizedBox(width: 10),
                                      Text(
                                        "Log Out",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: AppColors.redColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Image.asset(IconImages.settingicon,
                        color: Colors.black))),

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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("9",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("Posts",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("200",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("Followers",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("10",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
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
            ],
          ),
        ),
      ],
    );
  }
}

class ShowProfileWidget extends StatelessWidget {
  final String textName;
  final String icons;
  const ShowProfileWidget({
    Key? key,
    required this.textName,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(icons),
        SizedBox(width: 10),
        Text(textName, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
