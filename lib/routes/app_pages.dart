import 'package:base_bloc_3/common/utils/alice_helper.dart';
import 'package:base_bloc_3/di/di_setup.dart';
import 'package:base_bloc_3/features/core/presentation/pages/core_page.dart';
import 'package:base_bloc_3/features/example/presentation/pages/another_page.dart';
import 'package:base_bloc_3/routes/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppPages {
  final router = GoRouter(
    initialLocation: Routes.home,
    debugLogDiagnostics: true,
    navigatorKey: getIt<AliceHelper>().navigatorKey,
    routes: [
      GoRoute(
        name: Routes.home,
        path: Routes.home,
        builder: (context, state) => const CorePage(),
      ),
      GoRoute(
        name: Routes.anotherPage,
        path: Routes.anotherPage,
        builder: (context, state) => const AnotherPage(),
      ),
    ],
  );
}
