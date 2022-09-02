import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/features/app/di/app_di.dart';

import 'src/app.dart';

/// Main entry point
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final globalDeps = AppScope();

  runApp(
    ProviderScope(
      observers: [
        globalDeps,
      ],
      child: SampleApp(),
    ),
  );
}
