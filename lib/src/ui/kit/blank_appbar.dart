import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';

class BlankAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BlankAppBar({Key? key}) : super(key: key);

  @override
  State<BlankAppBar> createState() => _BlankAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _BlankAppBarState extends State<BlankAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [],
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: AppColors.baseBlue,
      ),
    );
  }
}
