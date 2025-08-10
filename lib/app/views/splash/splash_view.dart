import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controllers/splash/Splash_controller.dart';
import '../../core/constants/app_images.dart';
import '../../routes/app_routes.dart';

class SplashView extends StatelessWidget{

  final SplashController controller= Get.put(SplashController());
  @override
  Widget build(BuildContext context) {

    controller.init();

    return Scaffold(

      body: Center(

        child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          SvgPicture.asset(AppImages.splashicon,width: 150,height: 150,),
          ],
        ),
      ),
    );
  }



}