import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';

class BorderColorButton extends StatelessWidget {
  final String text;
  const BorderColorButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 40,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.redColor)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: AppColors.redColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
