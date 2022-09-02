import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/src/res/theme/text_style.dart';

/// AppBar for [AppMainScreen]
class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String userName;
  final String? userPic;
  const MainAppBar({
    Key? key,
    required this.userName,
    required this.userPic,
  }) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(65);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: const [],
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${AppLocalizations.of(context)!.hello},',
                  style: textRegular16Grey,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  '${widget.userName} 🔥',
                  style: textMedium20,
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            (widget.userPic != null)
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      widget.userPic!,
                      width: 45,
                      height: 45,
                    ),
                  )
                : const Icon(
                    Icons.power_off,
                    size: 40,
                    color: AppColors.baseBlue,
                  ),
          ],
        ),
      ),
    );
  }
}
