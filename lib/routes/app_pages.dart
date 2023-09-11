import 'package:get/get.dart';
import 'package:reserva_canchas/app/bindings/bindings.dart';
import 'package:reserva_canchas/app/views/screens/screens.dart';
import 'app_routes.dart';

const _defaultTransition = Transition.native;

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.canchasInfo,
      page: () => const CanchasInfo(),
      binding: CanchasInfoBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
      transition: _defaultTransition,
    ),
  ];
}
