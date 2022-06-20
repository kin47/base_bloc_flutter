// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_routes.dart';

class _$AppRoutes extends RootStackRouter {
  _$AppRoutes([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CorePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CorePage());
    }
  };

  @override
  List<RouteConfig> get routes => [RouteConfig(CorePageRoute.name, path: '/')];
}

/// generated route for
/// [CorePage]
class CorePageRoute extends PageRouteInfo<void> {
  const CorePageRoute() : super(CorePageRoute.name, path: '/');

  static const String name = 'CorePageRoute';
}
