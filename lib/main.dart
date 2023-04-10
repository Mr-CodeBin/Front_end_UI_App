import 'package:flutter/material.dart';
import 'package:front_end_app/utils/responsivescreen.dart';

import 'intropage.dart';

void main() {
  ResponsiveScreen.ScreenHeight = 844;
  ResponsiveScreen.ScreenWidth = 390;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: intropage(),
    );
  }
}
