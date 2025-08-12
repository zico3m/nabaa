import 'package:get/get.dart';

class ValidInput {
  static String? validateName(String name) {
    final v = name.trim();
    if (v.isEmpty) return "الاسم مطلوب";
    if (v.length < 3) return "الاسم يجب أن يكون على الأقل 3 أحرف";
    return null;
  }

  static String? validateEmail(String email) {
    final v = email.trim();
    if (v.isEmpty) return "البريد الإلكتروني مطلوب";
    if (!GetUtils.isEmail(v)) return "صيغة البريد الإلكتروني غير صحيحة";
    return null;
  }

  static String? validatePassword(String pass) {
    final v = pass.trim();
    if (v.isEmpty) return "كلمة المرور مطلوبة";
    if (v.length < 6) return "كلمة المرور يجب أن تكون على الأقل 6 أحرف";
    return null;
  }

  static String? validateConfirmPassword(String confirmPass, String pass) {
    final v = confirmPass.trim();
    if (v.isEmpty) return "تأكيد كلمة المرور مطلوب";
    if (pass.trim() != v) return "كلمة المرور غير متطابقة";
    return null;
  }
}
