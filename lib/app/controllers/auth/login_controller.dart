import 'package:get/get.dart';

import '../../core/functions/validatunputs.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var passowrd = ''.obs;
  var emailError = RxnString();
  var passError = RxnString();
  final isPasowardHidding = true.obs;

  logIN() {
    emailError.value = ValidInput.validateEmail(email.value);
    passError.value = ValidInput.validatePassword(passowrd.value);

    if (emailError.value == null && passError.value == null) {}
  }

  toGglepaassowardViasbility() {
    isPasowardHidding.value = !isPasowardHidding.value;
  }
}
