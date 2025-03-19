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
    final screenHeight = MediaQuery.of(context).size.height;

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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SearchBar(
                trailing: [
                  Icon(CupertinoIcons.search),
                  const SizedBox(width: 20),
                ],
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                elevation: WidgetStatePropertyAll(0),
              ),
              const SizedBox(height: 12),
              Container(
                height: screenHeight * .20,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.orange],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories"),
                  TextButton(onPressed: () {}, child: Text("See All")),
                ],
              ),
              SizedBox(
                height: 80,
                width: double.maxFinite,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) =>
                          Container(height: 75, width: 75, color: Colors.green),
                  separatorBuilder:
                      (context, index) => const SizedBox(width: 15),
                  itemCount: 10,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Feature Productss"),
                  TextButton(onPressed: () {}, child: Text("See All")),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 250,
                width: double.maxFinite,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) => Container(
                        height: 220,
                        width: 140,
                        color: Colors.blue,
                      ),
                  separatorBuilder:
                      (context, index) => const SizedBox(width: 15),
                  itemCount: 5,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: screenHeight * .20,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
