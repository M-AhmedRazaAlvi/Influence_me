import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/home/payment_card.dart';
import 'package:influence_me/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: AppColors.redColor),
        title: Text(
          "Payment Method",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                PaymentCardWidget(),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: Text(
                      "Billing Address",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        color: AppColors.BgGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Countrywidget(),
                    ),
                    InputTextWidget(
                        width1: MediaQuery.of(context).size.width * 0.45,
                        text: 'City'),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InputTextWidget(
                          width1: MediaQuery.of(context).size.width * 0.45,
                          text: 'Region'),
                      InputTextWidget(
                          width1: MediaQuery.of(context).size.width * 0.45,
                          text: 'Postal Code'),
                    ],
                  ),
                ),
                InputTextWidget(
                    width1: MediaQuery.of(context).size.width, text: 'Address'),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColors.BgGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Countrywidget(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 12),
                              hintText: "Phome Number",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 5)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class Countrywidget extends StatelessWidget {
  const Countrywidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      initialSelection: "Pakistan",
      showFlagMain: false,
      showDropDownButton: true,
      showCountryOnly: true,
      showOnlyCountryWhenClosed: true,
      padding: EdgeInsets.only(left: 1),
      searchDecoration: InputDecoration(
          hintText: 'Search Country',
          hintStyle: TextStyle(fontSize: 20),
          contentPadding: EdgeInsets.all(20),
          border: InputBorder.none),
      textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    required this.text,
    this.width1,
  }) : super(key: key);
  final String text;
  final width1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width1,
      height: MediaQuery.of(context).size.height * 0.07,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.BgGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 12),
          hintText: text,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20, top: 5),
        ),
      ),
    );
  }
}
