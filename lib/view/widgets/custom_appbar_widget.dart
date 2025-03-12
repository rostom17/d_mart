import 'package:d_mart/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppbarWidget({
    super.key,
    required this.title,
    required this.firstIcon,
    required this.secondIcon,
    this.showBackButoon = false,
  });

  final String title;
  final Icon firstIcon;
  final Icon secondIcon;
  final bool showBackButoon;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButoon ? Icon(Iconsax.arrow_left_2_outline) : null,
      title: Text(
        "$title",
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.bold,
          color: AppColors.oceanBlue,
        ),
      ),
      actions: [
        firstIcon,
        const SizedBox(width: 20),
        secondIcon,
        const SizedBox(width: 20),
      ],
      centerTitle: true,
    );
  }
}
