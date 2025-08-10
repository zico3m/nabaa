import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class OnboardingControler extends GetxController {
  // final Stoargeservices _stoargeservices = Stoargeservices();
  var currentpage = 0.obs;
  final PageController pageController = PageController();

  void nextPage() {
    if (currentpage.value < 2) {
      currentpage.value ++;
      pageController.animateToPage(
        currentpage.value,
        duration: Duration(seconds: 2),
        curve: Curves.ease,

      );

    }else{
      Get.offAllNamed(AppRoutes.HOME);


    }
  }

  void onPageChange(int index){

    currentpage.value=index;
  }

  void finishOnboarding(){
    // _stoargeservices.isFirstOpen=false;
  }


  @override
  void onClose() {
    pageController.dispose();
    // TODO: implement $configureLifeCycle
    super.onClose();

  }





}
