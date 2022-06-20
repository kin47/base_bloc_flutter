import 'package:auto_route/auto_route.dart';
import 'package:base_bloc_3/features/core/presentation/pages/core_page.dart';
import 'package:base_bloc_3/features/routes/route_constants.dart';
import 'package:flutter/cupertino.dart';

part 'app_routes.gr.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(path: RouteConstants.initial, page: CorePage, initial: true),
])
class AppRoutes extends _$AppRoutes {}
