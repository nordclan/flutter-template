import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_project/features/auth/di/login_vm.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample_project/src/res/theme/text_style.dart';
import 'package:sample_project/src/ui/kit/blank_appbar.dart';
import 'package:sample_project/src/ui/kit/button.dart';

/// App login page
class AppLogin extends StatefulWidget {
  final LoginVM vm;
  const AppLogin({
    Key? key,
    required this.vm,
  }) : super(key: key);

  @override
  State<AppLogin> createState() => _AppLoginState();
}

class _AppLoginState extends State<AppLogin> {
  LoginVM get vm => widget.vm;

  @override
  void dispose() {
    vm.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BlankAppBar(),
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            shrinkWrap: true,
            children: [
              Center(
                child: Text(
                  AppLocalizations.of(context)!.btnLogin,
                  style: bold24,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: vm.email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.labelEmail,
                  hintText: AppLocalizations.of(context)!.hintEmail,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: vm.password,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.labelPassword,
                  hintText: AppLocalizations.of(context)!.hintPassword,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppBaseButton(
                onPressed: () => GoRouter.of(context).go('/main'),
                label: AppLocalizations.of(context)!.btnSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
