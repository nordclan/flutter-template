import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';

/// Main search button to show [SeachPlaces]
class SearchBtn extends StatelessWidget {
  final String title;
  final Function()? func;
  const SearchBtn({
    Key? key,
    required this.title,
    this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: AppColors.white,
        side: const BorderSide(
          width: 1,
          color: AppColors.lightGray,
        ),
      ),
      onPressed: func,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              size: 24,
              color: AppColors.baseBlue,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.baseGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
