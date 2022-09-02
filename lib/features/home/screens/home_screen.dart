import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_project/src/res/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample_project/src/res/theme/text_style.dart';
import 'package:sample_project/src/ui/kit/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              AppImgAssests.travelLogo,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            AppBaseButton(
              onPressed: () => GoRouter.of(context).go('/login'),
              label: AppLocalizations.of(context)!.btnLogin,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => GoRouter.of(context).go('/registration'),
              child: Text(
                AppLocalizations.of(context)!.btnRegistration,
                style: textRegular24Blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
