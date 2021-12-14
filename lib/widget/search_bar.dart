import 'package:flutter/material.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black26)),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.black26),
          hintText: 'Search',
          prefixIcon: Icon(Icons.search, color: Colors.black26),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
