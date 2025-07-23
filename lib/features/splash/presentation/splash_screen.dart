import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/constants/image_constants.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/route/route_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.go(RouteName.dynamicForm);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 68.w),
        child: Center(
          child: Image.asset(AppImages.appIcon),
        ),
      ),
    );
  }
}
