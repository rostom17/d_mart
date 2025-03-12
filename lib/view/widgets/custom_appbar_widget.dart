
import 'package:d_mart/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppbarWidget({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "$title",
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.bold,
          color: AppColors.oceanBlue,
        ),
      ),
      actions: [
        Icon(Iconsax.notification_bing_outline, color: AppColors.navyBlack),
        const SizedBox(width: 20),
        Icon(Iconsax.shopping_cart_outline, color: AppColors.navyBlack),
        const SizedBox(width: 20),
      ],
      centerTitle: true,
    );
  }
}
