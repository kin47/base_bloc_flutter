import 'package:auto_route/auto_route.dart';
import 'package:base_bloc_3/features/core/presentation/pages/example_page.dart';
import 'package:base_bloc_3/features/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

part 'app_pages.gr.dart';

@singleton
@MaterialAutoRouter(routes: [
  AutoRoute(path: AppRoutes.initial, page: ExamplePage, initial: true),
])
class AppPages extends _$AppPages {}