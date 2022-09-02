import 'package:flutter/material.dart';

class SettingsRepository {
  late ThemeMode _themeMode;

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  /// Persists the user's preferred ThemeMode to local or remote storage.
  // ignore: avoid-unused-parameters, no-empty-block
  Future<void> updateThemeMode(ThemeMode? theme) async {
    if (theme == null) return;

    // Dot not perform any work if new and old ThemeMode are identical
    if (theme == _themeMode) return;

    // Otherwise, store the new theme mode in memory
    _themeMode = theme;
  }

  /// Load user theme settings
  Future<void> loadSettings() async {
    _themeMode = await themeMode();
  }
}
