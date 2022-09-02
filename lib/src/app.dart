import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sample_project/navigation/service/router.dart';

import 'package:sample_project/src/res/theme/theme_data.dart';

/// The Widget that configures your application.
class SampleApp extends StatelessWidget {
  SampleApp({
    Key? key,
  }) : super(key: key);

  final router = AppRouter().router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        localizationsDelegates: _localizartionsDelegates,
        supportedLocales: _locales,
        theme: appTheme,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate);
  }
}

// Localization settings
const _localizartionsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

// Avaliable localizations
const _locales = [
  Locale('ru', 'RU'),
  Locale('en', ''),
];
