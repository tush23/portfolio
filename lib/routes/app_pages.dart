import 'package:get/get.dart';
import 'package:get/get.dart';
import '../features/landing/presentation/pages/landing_page.dart';
import '../bindings/landing_binding.dart';

import 'package:get/get.dart';
import '../features/auth/presentation/pages/auth_page.dart';
import '../bindings/auth_binding.dart';

abstract class Routes {
  static const LANDING = _Paths.LANDING;

  static const AUTH = _Paths.AUTH;

  Routes._();
}

abstract class _Paths {
  static const LANDING = '/landing';

  static const AUTH = '/auth';

  _Paths._();
}

class AppPages {
  AppPages._();
  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingPage(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthPage(),
      binding: AuthBinding(),
    ),
  ];
}
