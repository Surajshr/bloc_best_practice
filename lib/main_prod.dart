import 'package:flutter/material.dart';
import 'package:varosha_app/bootstrap.dart';
import 'package:varosha_app/core/constants/environment_constant.dart';
import 'package:varosha_app/start_up.dart';

void main() async {
  // Set environment to production
  Environment.env = Env.prod;
  await initializeApp();
  // Bootstrap the app
  await bootstrap(
    () => const StartUp(),
  );
}
