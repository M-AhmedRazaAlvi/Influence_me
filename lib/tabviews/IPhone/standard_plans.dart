import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/IPhone/basic_plans.dart';
import 'package:influence_me/utils/app_colors.dart';

class StandardPlans extends StatefulWidget {
  const StandardPlans({Key? key}) : super(key: key);

  @override
  _StandardPlansState createState() => _StandardPlansState();
}

class _StandardPlansState extends State<StandardPlans> {
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
            texttitle: 'STANDARD',
            textDollar: '\$50',
            textDay: '/6Month',
          ),
        ],
      ),
    );
  }
}
