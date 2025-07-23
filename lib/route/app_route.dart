part of 'route_imports.dart';

class AppRouter {
  static GoRouter createRouter(GlobalKey<NavigatorState>? navigatorKey) {
    return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: RouteName.splash,
      routes: [
        GoRoute(
          path: RouteName.splash,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: RouteName.dashboard,
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: RouteName.todo,
          builder: (context, state) => const TodoBaseScreen(),
        ),
        GoRoute(
          path: RouteName.dynamicForm,
          builder: (context, state) => const DynamicFormScreen(),
        ),
        GoRoute(
          path: RouteName.formSubmissionDetails,
          builder: (context, state) {
            final submission = state.extra as FormSubmissionModel;
            return FormSubmissionDetailsScreen(submission: submission);
          },
        ),
        GoRoute(
          path: RouteName.productList,
          builder: (context, state) => const ProductListScreen(),
        ),
        GoRoute(
          path: RouteName.methodChannel,
          builder: (context, state) => const DeviceInfoScreen(),
        ),
        // Nested Navigation with ShellRoute
        ShellRoute(
          builder: (context, state, child) {
            return NestedNavigationShell(child: child);
          },
          routes: [
            // Tab 1 Routes
            GoRoute(
              path: RouteName.nestedNavTab1,
              builder: (context, state) => const TabOneScreen(),
              routes: [
                GoRoute(
                  path: 'detail',
                  builder: (context, state) => const TabOneDetailScreen(),
                ),
              ],
            ),
            // Tab 2 Routes
            GoRoute(
              path: RouteName.nestedNavTab2,
              builder: (context, state) => const TabTwoScreen(),
              routes: [
                GoRoute(
                  path: 'detail',
                  builder: (context, state) => const TabTwoDetailScreen(),
                ),
              ],
            ),
            // Tab 3 Routes
            GoRoute(
              path: RouteName.nestedNavTab3,
              builder: (context, state) => const TabThreeScreen(),
              routes: [
                GoRoute(
                  path: 'detail',
                  builder: (context, state) => const TabThreeDetailScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) => const Scaffold(
        body: Center(
          child: Text('Route not found'),
        ),
      ),
    );
  }
}
