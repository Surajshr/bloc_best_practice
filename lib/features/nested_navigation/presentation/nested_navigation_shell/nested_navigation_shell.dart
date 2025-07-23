import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/route/route_imports.dart';

class NestedNavigationShell extends StatefulWidget {
  final Widget child;

  const NestedNavigationShell({super.key, required this.child});

  @override
  State<NestedNavigationShell> createState() => _NestedNavigationShellState();
}

class _NestedNavigationShellState extends State<NestedNavigationShell> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.go(RouteName.dashboard);
        }
      },
      child: Scaffold(
        body: widget.child,
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.kBackgroundColor.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTabItem(0, 'Item 1', Icons.home, RouteName.nestedNavTab1),
              _buildTabItem(
                  1, 'Item 2', Icons.favorite, RouteName.nestedNavTab2),
              _buildTabItem(
                  2, 'Item 3', Icons.settings, RouteName.nestedNavTab3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(int index, String title, IconData icon, String route) {
    final isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
        context.go(route);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.kPrimaryColor.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected
                  ? AppColors.kPrimaryColor
                  : AppColors.kTextDisabledColor,
              size: 24.sp,
            ),
            SizedBox(height: 4.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                color: isSelected
                    ? AppColors.kPrimaryColor
                    : AppColors.kTextDisabledColor,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
