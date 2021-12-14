import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';

class TagButtons extends StatelessWidget {
  const TagButtons({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: AppColors.darkGrey,
            elevation: 0,
            fixedSize: Size(90, 29),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ));
  }
}
