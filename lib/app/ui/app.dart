import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:varosha_app/core/constants/app_constants.dart';
import 'package:varosha_app/core/constants/environment_constant.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:varosha_app/core/theme/app_theme.dart';
import 'package:varosha_app/features/dynamic_form/data/model/dynamic_form_model.dart';
import 'package:varosha_app/features/dynamic_form/presentation/logic/dynamic_form_bloc.dart';
import 'package:varosha_app/features/ecommerce/presentation/logic/product_list/product_list_bloc.dart';
import 'package:varosha_app/features/device_info/presentation/logic/device_info_bloc.dart';
import 'package:varosha_app/features/todo/presentation/logic/todo_bloc.dart';
import 'package:varosha_app/features/todo/presentation/logic/todo_event.dart';
import 'package:varosha_app/route/route_imports.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  final String environment;

  const App({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => TodoBloc()..add(const TodoEvent.load()),
              ),
              BlocProvider(
                create: (context) => DynamicFormBloc(),
              ),
              BlocProvider(
                create: (context) => ProductListBloc(),
              ),
              BlocProvider(
                create: (context) => DeviceInfoBloc(),
              ),
            ],
            child: ScreenUtilInit(
              designSize:
                  const Size(AppConstants.kAppWidth, AppConstants.kAppHeight),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MaterialApp.router(
                theme: AppTheme.lightTheme,
                debugShowCheckedModeBanner: false,
                // localizationsDelegates: AppLocalizations.localizationsDelegates,
                // supportedLocales: AppLocalizations.supportedLocales,
                routerConfig: AppRouter.createRouter(navigatorKey),
              ),
            ),
          ),
          if (environment == Env.dev.toString() ||
              environment == Env.uat.toString())
            Banner(
              message: environment.toUpperCase(),
              location: BannerLocation.topEnd,
              color:
                  environment == Env.dev.toString() ? Colors.red : Colors.blue,
            ),
        ],
      ),
    );
  }
}
