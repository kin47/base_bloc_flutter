// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_pages.dart';

class _$AppPages extends RootStackRouter {
  _$AppPages([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ExamplePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ExamplePage());
    }
  };

  @override
  List<RouteConfig> get routes =>
      [RouteConfig(ExamplePageRoute.name, path: '/')];
}

/// generated route for
/// [ExamplePage]
class ExamplePageRoute extends PageRouteInfo<void> {
  const ExamplePageRoute() : super(ExamplePageRoute.name, path: '/');

  static const String name = 'ExamplePageRoute';
}
