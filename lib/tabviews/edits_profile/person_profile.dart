import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/material.dart';
import 'package:influence_me/utils/icon_images.dart';
import 'package:influence_me/widget/border_color_button.dart';
import 'package:influence_me/widget/color_button.dart';
import 'package:influence_me/widget/text_input.dart';

class PersonProfile extends StatefulWidget {
  const PersonProfile({
    Key? key,
  }) : super(key: key);

  @override
  _PersonProfileState createState() => _PersonProfileState();
}

class _PersonProfileState extends State<PersonProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            TextInputwidget(text1: "Name"),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(IconImages.earth, width: 18, height: 18),
                      SizedBox(width: 10),
                      Text("Country",
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ],
                  ),
                  CountryCodePicker(
                    showCountryOnly: true,
                    showFlagDialog: true,
                    showOnlyCountryWhenClosed: true,
                    showDropDownButton: true,
                    initialSelection: 'Pakistan',
                    showFlagMain: true,
                    showFlag: false,
                    hideMainText: false,
                    alignLeft: false,
                    padding: EdgeInsets.only(left: 10),
                    searchDecoration: InputDecoration(
                        hintText: 'Search Country',
                        hintStyle: TextStyle(fontSize: 20),
                        contentPadding: EdgeInsets.all(9),
                        border: InputBorder.none),
                    dialogTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 20, right: 5),
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black26)),
              child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45),
                      hintText: "Select Category",
                      border: InputBorder.none,
                      suffixIcon: Image.asset(IconImages.Dropdown,
                          width: 13, height: 16))),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "Discription",
                    hintStyle: TextStyle(color: Colors.black45),
                    border: InputBorder.none),
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorsButtonWidget(text: "Save"),
                BorderColorButton(text: "Cancel"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
