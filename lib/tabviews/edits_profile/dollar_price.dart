import 'package:flutter/material.dart';
import 'package:influence_me/widget/border_color_button.dart';
import 'package:influence_me/widget/color_button.dart';
import 'package:influence_me/widget/text_input.dart';

class DollarPriceWidget extends StatelessWidget {
  const DollarPriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Basic Package",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            TextInputwidget(text1: 'Enter Price'),
            TextInputwidget(text1: 'Enter Price Discription'),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Pro Package",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            TextInputwidget(text1: 'Enter Price'),
            TextInputwidget(text1: 'Enter Price Discription'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorsButtonWidget(text: 'Save'),
                BorderColorButton(text: 'Cancel'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
