import 'package:flutter/material.dart';
import 'package:influence_me/tabviews/edits_profile/edit_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Influence Me',
      home: EditProfileScreen(),
    );
  }
}
