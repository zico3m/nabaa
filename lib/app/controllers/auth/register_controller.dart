import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabaa/app/views/signin/login_view.dart';

import '../../core/functions/validatunputs.dart';

class RegisterController extends GetxController {
  // final  emailControler = TextEditingController();
  // final  nameControler = TextEditingController();
  // final  passControler = TextEditingController();
  // final  confPassControler = TextEditingController();

  var name = ''.obs;
  var email = ''.obs;
  var passowrd = ''.obs;
  var configpass = ''.obs;

  var nameError = RxnString();
  var emailError = RxnString();
  var passError = RxnString();
  var confpassError = RxnString();

  final isPasowardHidding = true.obs;

  register() {
    nameError.value = ValidInput.validateName(name.value);
    emailError.value = ValidInput.validateEmail(email.value);
    passError.value = ValidInput.validatePassword(passowrd.value);
    confpassError.value = ValidInput.validateConfirmPassword(
      passowrd.value,
      configpass.value,
    );

    if (nameError.value == null &&
        emailError.value == null &&
        passError.value == null &&
        confpassError.value == null) {
      Get.to(LoginView());

    }

  }

  toGglepaassowardViasbility() {
    isPasowardHidding.value = !isPasowardHidding.value;
  }

// ----------------------------------------------------------------
}
