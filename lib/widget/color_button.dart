import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';

class ColorsButtonWidget extends StatelessWidget {
  final String text;
  const ColorsButtonWidget({
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
            color: AppColors.redColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
