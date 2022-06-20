import 'package:base_bloc_3/common/constants.dart';
import 'package:base_bloc_3/di/di_setup.dart';
import 'package:base_bloc_3/features/routes/app_routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        LocalizationConstants.enUSLocale,
        LocalizationConstants.viLocale
      ],
      path: LocalizationConstants.path,
      fallbackLocale: LocalizationConstants.enUSLocale,
      child: MyApp(),
    ),
  );
}

//todo: Navigator
//todo: base bloc, base widget, etc

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRoute = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRoute.delegate(),
      routeInformationParser: _appRoute.defaultRouteParser(),
      // routes: <String, WidgetBuilder>{
      //   ArticleDetail.routeKey: (BuildContext context) =>Container(),
      // },
    );
  }
}
