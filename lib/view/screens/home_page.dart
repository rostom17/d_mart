import 'package:d_mart/utils/constants/app_colors.dart';
import 'package:d_mart/view/widgets/custom_appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(
        title: "Mega Mall",
        firstIcon: Icon(Iconsax.notification_bing_outline),
        secondIcon: Icon(
          Iconsax.shopping_cart_outline,
          color: AppColors.navyBlack,
        ),
        showBackButoon: true,
      ),

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
