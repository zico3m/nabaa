import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/views/LogIn/register_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(

      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: AppRoutes.SPLASH,
        // getPages: AppPages.pages,

        home: RegisterView(),


      ));
}

