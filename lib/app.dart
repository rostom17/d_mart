import 'package:d_mart/view/screens/home_page.dart';
import 'package:flutter/material.dart';

class DMart extends StatelessWidget {
  const DMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DMart',
      home: const MyHomePage(),
    );
  }
}
