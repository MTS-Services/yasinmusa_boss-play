import 'package:get/get.dart';

import '../controllers/enter_new_password_controller.dart';

class EnterNewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnterNewPasswordController>(
      () => EnterNewPasswordController(),
    );
  }
}
