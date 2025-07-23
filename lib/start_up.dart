import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:varosha_app/app/ui/app.dart';
// import 'package:varosha_app/core/theme/app_theme.dart';
import 'package:flutter/services.dart';
import 'package:varosha_app/core/di/di.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';

/// This file contains initialization logic for the application.
///
/// The [initializeApp] function handles core app initialization tasks like:
/// - Ensuring Flutter bindings are initialized
/// - Setting up dependency injection
/// - Setting preferred screen orientations to portrait only
/// - Configuring system UI overlays and colors
///

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return App(environment: Environment.env.toString());
  }
}
