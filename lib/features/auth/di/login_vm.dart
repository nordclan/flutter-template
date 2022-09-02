import 'package:flutter/material.dart';

/// VM for login page
class LoginVM extends ChangeNotifier {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  LoginVM() : super() {
    email.addListener(() {
      // TODO: email interaction
    });
    password.addListener(() {
      // TODO: password interaction
    });
  }

  /// Disposing current controllers
  void disposeControllers() {
    email.dispose();
    password.dispose();
  }
}
