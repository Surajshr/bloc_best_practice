import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/route/route_imports.dart';
import 'package:varosha_app/widgets/app_button.dart';
import 'package:varosha_app/widgets/build_text.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildText(
          text: 'Dashboard',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BuildText(
              text: 'Welcome to Varosha App!',
              fontSize: 28,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h),
            const BuildText(
              text: 'Choose a feature to explore:',
              fontSize: 16,
              color: AppColors.kTextDisabledColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.h),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                childAspectRatio: 1.2,
                children: [
                  _buildFeatureCard(
                    context,
                    'Todo App',
                    Icons.check_circle_outline,
                    AppColors.kPrimaryColor,
                    () => context.go(RouteName.todo),
                  ),
                  _buildFeatureCard(
                    context,
                    'Dynamic Form',
                    Icons.assignment,
                    AppColors.kPrimaryColor,
                    () => context.go(RouteName.dynamicForm),
                  ),
                  _buildFeatureCard(
                    context,
                    'E-commerce',
                    Icons.shopping_cart,
                    AppColors.kPrimaryColor,
                    () => context.go(RouteName.productList),
                  ),
                  _buildFeatureCard(
                    context,
                    'Device Info',
                    Icons.device_hub,
                    AppColors.kPrimaryColor,
                    () => context.go(RouteName.methodChannel),
                  ),
                  _buildFeatureCard(
                    context,
                    'Nested Navigation',
                    Icons.navigation,
                    AppColors.kPrimaryColor,
                    () => context.go(RouteName.nestedNavTab1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.kBackgroundColor.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 32.sp,
                color: color,
              ),
            ),
            SizedBox(height: 12.h),
            BuildText(
              text: title,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4.h),
            const BuildText(
              text: 'Tap to explore',
              fontSize: 12,
              color: AppColors.kTextDisabledColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
