import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/home/homeview.dart';
import '../views/onboarding/onboarding_view.dart';
import '../views/splash/splash_view.dart';
import 'app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: AppRoutes.ONBOARDING ,
      page: () => OnboardingView(),

    ),

    GetPage(
      name: AppRoutes.HOME,
      page: () => Homeview(),
    ),
  ];
}
