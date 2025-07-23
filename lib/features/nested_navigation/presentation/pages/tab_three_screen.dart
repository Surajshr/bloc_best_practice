import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/route/route_imports.dart';
import 'package:varosha_app/widgets/app_button.dart';
import 'package:varosha_app/widgets/build_text.dart';

class TabThreeScreen extends StatelessWidget {
  const TabThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildText(
          text: 'Tab Three',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BuildText(
                text: 'Welcome to Tab Three!',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20.h),
              const BuildText(
                text: 'This is the third tab of the nested navigation.',
                fontSize: 16,
                color: AppColors.kTextDisabledColor,
              ),
              SizedBox(height: 40.h),
              AppButton(
                onPressed: () {
                  context.go(RouteName.nestedNavTab3Detail);
                },
                text: 'Navigate to Detail',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
