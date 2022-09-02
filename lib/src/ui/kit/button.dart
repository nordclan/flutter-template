import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/src/res/theme/text_style.dart';
import 'package:sample_project/src/ui/kit/progress_indicator.dart';

/// Common app button
class AppBaseButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool loading;

  const AppBaseButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? () {} : onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        primary: AppColors.baseBlue,
        textStyle: textRegular24White,
      ),
      child: loading
          ? const AppCircularProgressIndicator()
          : Text(
              label,
              overflow: TextOverflow.ellipsis,
            ),
    );
  }
}
