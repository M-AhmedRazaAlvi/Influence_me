import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/IPhone/basic_plans.dart';
import 'package:influence_me/utils/app_colors.dart';

class PremiumPlans extends StatefulWidget {
  const PremiumPlans({Key? key}) : super(key: key);

  @override
  _PremiumPlansState createState() => _PremiumPlansState();
}

class _PremiumPlansState extends State<PremiumPlans> {
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
            texttitle: 'PREMIUM',
            textDollar: '\$100',
            textDay: '/Year',
          ),
        ],
      ),
    );
  }
}
