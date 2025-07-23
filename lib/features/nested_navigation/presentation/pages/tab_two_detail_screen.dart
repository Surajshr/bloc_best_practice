import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/widgets/app_button.dart';
import 'package:varosha_app/widgets/build_text.dart';

class TabTwoDetailScreen extends StatelessWidget {
  const TabTwoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildText(
          text: 'Tab Two Detail',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BuildText(
                text: 'Tab Two Detail Screen!',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20.h),
              const BuildText(
                text: 'This is a detail screen within Tab Two.',
                fontSize: 16,
                color: AppColors.kTextDisabledColor,
              ),
              SizedBox(height: 20.h),
              const BuildText(
                text: 'You can still switch between tabs!',
                fontSize: 16,
                color: AppColors.kPrimaryColor,
              ),
              SizedBox(height: 40.h),
              AppButton(
                onPressed: () => context.pop(),
                text: 'Go Back',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
