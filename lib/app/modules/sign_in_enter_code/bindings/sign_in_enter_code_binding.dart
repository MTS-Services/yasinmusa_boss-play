import 'package:get/get.dart';

import '../controllers/sign_in_enter_code_controller.dart';

class SignInEnterCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInEnterCodeController>(
      () => SignInEnterCodeController(),
    );
  }
}
