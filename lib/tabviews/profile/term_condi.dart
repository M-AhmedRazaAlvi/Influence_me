import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/images.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  bool firstChecked = false;
  bool secondChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: AppColors.redColor),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xffE7F3FE),
              child: Image(
                image: AssetImage(Images.outline),
                width: 140,
                height: 140,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text("Terms & Conditions",
                style: TextStyle(
                    color: Color(0xff707070),
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Terms of service are the legal agreements\nbetween a service provider and a person who\nwants to use that service. The person must agree \nto abide by the terms of service in order to use \nthe offered service. Terms of service can also be \nmerely a disclaimer, especially regarding the use of \nwebsites."),
                SizedBox(height: 10),
                Text(
                    "The person must agree to abide by the terms of \nservice in order to use the offered service. Terms \nof service can also be merely a disclaimer, \nespecially regarding the use of websites. Vague \nlanguage and lengthy sentences used in the terms \nof use have brought concerns on customer privacy \nand raised public awareness in many ways."),
                SizedBox(height: 10),
                Text("Read full Terms & Conditions",
                    style: TextStyle(color: AppColors.textblue)),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Checkbox(
                          tristate: false,
                          checkColor: Colors.white,
                          activeColor: Colors.black,
                          value: firstChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              firstChecked = value!;
                            });
                          }),
                    ),
                    SizedBox(width: 5),
                    Text("I agree with the Terms and Conditions")
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.black,
                          value: secondChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              secondChecked = value!;
                            });
                          }),
                    ),
                    SizedBox(width: 5),
                    Text("I agree with"),
                    SizedBox(width: 5),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: AppColors.textblue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  decoration: BoxDecoration(
                      color: AppColors.darkblue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Color(0xff828282), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
