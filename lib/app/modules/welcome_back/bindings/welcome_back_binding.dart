import 'package:get/get.dart';

import '../controllers/welcome_back_controller.dart';

class WelcomeBackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeBackController>(
      () => WelcomeBackController(),
    );
  }
}
