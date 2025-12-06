import 'package:get/get.dart';

import '../controllers/forgot_enter_code_controller.dart';

class ForgotEnterCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotEnterCodeController>(
      () => ForgotEnterCodeController(),
    );
  }
}
