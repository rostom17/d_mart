import 'package:d_mart/view/widgets/custom_appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: "Mega Mall"),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SearchBar(
              trailing: [
                Icon(CupertinoIcons.search),
                const SizedBox(width: 20),
              ],
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              elevation: WidgetStatePropertyAll(0),
            ),
            ClipRRect(borderRadius: BorderRadius.circular(20)),
          ],
        ),
      ),
    );
  }
}
