import 'dart:developer';

import 'package:base_bloc_3/common/constants.dart';
import 'package:base_bloc_3/common/notification/local_notification_helper.dart';
import 'package:base_bloc_3/common/notification/push_notification_helper.dart';
import 'package:base_bloc_3/di/di_setup.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/config/screen_utils_config.dart';
import 'routes/app_pages.dart';

String envConfig(String flavor) {
  switch (flavor) {
    case 'dev':
      return 'assets/env/.env_dev';
    case 'staging':
      return 'assets/env/.env_staging';
    case 'production':
      return 'assets/env/.env_production';
    default:
      return 'assets/env/.env_dev';
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
  log("flavor: $flavor");
  await dotenv.load(
    fileName: envConfig(flavor),
  );
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp();
  await getIt<PushNotificationHelper>().initialize();
  await getIt<LocalNotificationHelper>().init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        LocalizationConstants.enUSLocale,
        LocalizationConstants.viLocale
      ],
      path: LocalizationConstants.path,
      startLocale: LocalizationConstants.viLocale,
      fallbackLocale: LocalizationConstants.viLocale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          routerConfig: getIt<AppPages>().router,
        );
      },
    );
  }
}
