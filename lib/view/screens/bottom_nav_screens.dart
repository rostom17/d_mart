import 'package:d_mart/view/screens/home_page.dart';
import 'package:d_mart/view/screens/order_page.dart';
import 'package:d_mart/view/screens/profile_page.dart';
import 'package:d_mart/view/screens/wish_list_page.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomNavScreens extends StatefulWidget {
  const BottomNavScreens({super.key});

  @override
  State<BottomNavScreens> createState() => _BottomNavScreensState();
}

class _BottomNavScreensState extends State<BottomNavScreens> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    MyHomePage(),
    MyWishListPage(),
    OrderPage(),
    ProfilePage(),
  ];

  void onChanged(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onChanged,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Iconsax.heart_outline), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_bag_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_2user_outline),
            label: "",
          ),
        ],
      ),
    );
  }
}
