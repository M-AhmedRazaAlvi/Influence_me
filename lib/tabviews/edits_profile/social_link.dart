import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/icon_images.dart';

import 'package:influence_me/utils/images.dart';

class SocialLinkWidget extends StatelessWidget {
  const SocialLinkWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Social Links",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SelectDropdown(),
            Row(
              children: [
                Image(image: AssetImage(Images.instagram)),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jhon Doe"),
                    Text(
                      "Instagram",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            AddTextWidget(text: "Remove"),
          ],
        ),
      ),
    );
  }
}

class SelectDropdown extends StatefulWidget {
  const SelectDropdown({Key? key}) : super(key: key);

  @override
  _SelectDropdownState createState() => _SelectDropdownState();
}

class Item {
  const Item(this.name, this.Icons);
  final String name;
  // ignore: non_constant_identifier_names
  final Icons;
}

class _SelectDropdownState extends State<SelectDropdown> {
  TextEditingController nameController = TextEditingController();
  late bool _selected;
  List<Item> users = [
    Item('Instagram', (Image.asset(IconImages.insta))),
    Item('TikTok', Image.asset(IconImages.tiktok)),
    Item('Facebook', Image.asset(IconImages.Facebook)),
    Item('Youtube', Image.asset(IconImages.Youtube)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: DropdownButton(
            underline: Column(),
            items: users.map((Item user) {
              return DropdownMenuItem(
                value: user,
                child: Row(
                  children: [
                    user.Icons,
                    SizedBox(width: 15),
                    Text(user.name),
                  ],
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
              value;
              });
            },
            hint: Text(
              "Add social link",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}

class AddTextWidget extends StatelessWidget {
  final String text;
  const AddTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
          color: AppColors.lightGrey, borderRadius: BorderRadius.circular(30)),
      child: TextButton(
        onPressed: () {},
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.black),
        )),
      ),
    );
  }
}
