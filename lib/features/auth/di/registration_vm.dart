import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample_project/src/services/utils/utils.dart';

/// VM for registration page
class RegistrationVM extends ChangeNotifier {
  final BuildContext _context;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordRepeat = TextEditingController();

  RegistrationVM({
    required BuildContext context,
  })  : _context = context,
        super() {
    email.addListener(() {
      // TODO: email interaction
    });
    password.addListener(() {
      // TODO: password interaction
    });
    passwordRepeat.addListener(() {
      // TODO: repeat password interaction
    });
  }

  /// Validate email throught registration
  String? emailValidator(String? value) {
    final regex = RegExp(AppUtilConsts.emailRegexp, caseSensitive: false);

    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return AppLocalizations.of(_context)?.valueIsIncorrect;
    }

    return null;
  }

  /// Comparing passwords
  bool equalsPasswords() => password.text == passwordRepeat.text ? true : false;

  /// Disposing controllers
  void disposeControllers() {
    email.dispose();
    password.dispose();
    passwordRepeat.dispose();
  }
}
