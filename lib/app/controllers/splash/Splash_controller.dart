import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/app_routes.dart';

class SplashController extends GetxController {

  @override
  void onReady() {
    super.onReady();
    init();
  }

  void init() async {

    await Future.delayed(const Duration(seconds: 5));



      Get.offAllNamed(AppRoutes.ONBOARDING);

  }
}
