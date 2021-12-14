import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/images.dart';

class BasicPlans extends StatefulWidget {
  const BasicPlans({Key? key}) : super(key: key);

  @override
  _BasicPlansState createState() => _BasicPlansState();
}

class _BasicPlansState extends State<BasicPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgBlue,
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 60),
          child: Text("Pricing Plans",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        children: [
          PricingPlansWidget(
            texttitle: 'BASIC',
            textDollar: '\$10',
            textDay: '/Month',
          ),
        ],
      ),
    );
  }
}

class PricingPlansWidget extends StatelessWidget {
  final String texttitle;
  final String textDollar;
  final String textDay;

  const PricingPlansWidget({
    Key? key,
    required this.texttitle,
    required this.textDollar,
    required this.textDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
              color: AppColors.bgBlue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
        ),
        Positioned(
          top: 70,
          left: 15,
          right: 15,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.68,
            child: Card(
              elevation: 1,
              shadowColor: Colors.green,
              margin: EdgeInsets.all(20),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      texttitle,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image(
                      image: AssetImage(Images.Diamond),
                      fit: BoxFit.cover,
                      width: 148,
                      height: 148),
                  Container(
                    padding: EdgeInsets.only(left: 60, top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.done, color: Colors.red, size: 18),
                            SizedBox(width: 20),
                            Text("Monthly Chat.")
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.done, color: Colors.red, size: 18),
                            SizedBox(width: 20),
                            Text("Your Profile is visible to others.")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Text(textDollar,
                        style: TextStyle(
                            color: AppColors.bgBlue,
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    textDay,
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.symmetric(
                              horizontal: 60, vertical: 15),
                          decoration: BoxDecoration(
                              color: AppColors.redColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Get Offer",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
