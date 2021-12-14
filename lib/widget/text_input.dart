import 'package:flutter/material.dart';

class TextInputwidget extends StatelessWidget {
  final String text1;
  const TextInputwidget({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black26)),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.black45),
          hintText: text1,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
