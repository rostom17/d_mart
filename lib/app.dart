import 'package:flutter/material.dart';
import 'package:d_mart/view/screens/bottom_nav_screens.dart';

class DMart extends StatelessWidget {
  const DMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DMart',
      home: BottomNavScreens(),
    );
  }
}
