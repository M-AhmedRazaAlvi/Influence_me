import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/images.dart';

class PaymentCardWidget extends StatefulWidget {
  const PaymentCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  _PaymentCardWidgetState createState() => _PaymentCardWidgetState();
}

class _PaymentCardWidgetState extends State<PaymentCardWidget> {
  bool firstChecked = false;
  bool secondChecked = false;
  bool thirdChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.22,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: AppColors.BgGrey, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                          image: AssetImage(Images.Visa),
                          width: 35,
                          height: 35),
                      SizedBox(width: 15),
                      Text("Visa Card"),
                    ],
                  ),
                  CustomCheckBox(
                    value: firstChecked,
                    shouldShowBorder: true,
                    borderColor: Colors.grey[400],
                    checkedFillColor: Colors.green,
                    borderRadius: 20,
                    borderWidth: 2,
                    checkBoxSize: 18,
                    onChanged: (val) {
                      //do your stuff here
                      setState(() {
                        firstChecked = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                          image: AssetImage(Images.paypal),
                          width: 35,
                          height: 35),
                      SizedBox(width: 15),
                      Text("Paypal"),
                    ],
                  ),
                  CustomCheckBox(
                    value: secondChecked,
                    shouldShowBorder: true,
                    borderColor: Colors.grey[400],
                    checkedFillColor: Colors.green,
                    borderRadius: 20,
                    borderWidth: 2,
                    checkBoxSize: 18,
                    onChanged: (val) {
                      //do your stuff here
                      setState(() {
                        secondChecked = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                          image: AssetImage(Images.mastercard),
                          width: 35,
                          height: 35),
                      SizedBox(width: 15),
                      Text("Master Card"),
                    ],
                  ),
                  CustomCheckBox(
                    value: thirdChecked,
                    shouldShowBorder: true,
                    borderColor: Colors.grey[400],
                    checkedFillColor: Colors.green,
                    borderRadius: 20,
                    borderWidth: 2,
                    checkBoxSize: 18,
                    onChanged: (val) {
                      //do your stuff here
                      setState(() {
                        thirdChecked = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
