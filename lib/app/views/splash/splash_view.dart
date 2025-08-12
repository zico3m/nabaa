import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nabaa/app/core/constants/app_fonts.dart';

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

          SizedBox(
            height: 15,
          ),
          Lottie.asset(
            AppImages.readingNews,
            fit: BoxFit.contain
          ),
          Text("welcomt to our wuold", style: AppFonts.TitleStyle,),

          ],
        ),
      ),
    );
  }



}