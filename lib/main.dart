import 'package:base_bloc_3/common/constants.dart';
import 'package:base_bloc_3/di/di_setup.dart';
import 'package:base_bloc_3/features/routes/app_pages.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/config/screen_utils_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return EasyLocalization(
          supportedLocales: const [
            LocalizationConstants.enUSLocale,
            LocalizationConstants.viLocale
          ],
          path: LocalizationConstants.path,
          fallbackLocale: LocalizationConstants.enUSLocale,
          child: MyApp(),
        );
      },
    ),
  );
}

//todo: Navigator
//todo: base bloc, base widget, etc

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRoute = getIt<AppPages>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        ScreenUtilsConfig.designWidth,
        ScreenUtilsConfig.designHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routerDelegate: _appRoute.delegate(),
          routeInformationParser: _appRoute.defaultRouteParser(),
        );
      },
    );
  }
}
