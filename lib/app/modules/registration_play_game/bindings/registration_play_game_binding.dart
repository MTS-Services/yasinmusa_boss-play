import 'package:get/get.dart';

import '../controllers/registration_play_game_controller.dart';

class RegistrationPlayGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationPlayGameController>(
      () => RegistrationPlayGameController(),
    );
  }
}
