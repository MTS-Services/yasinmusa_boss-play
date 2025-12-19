import 'package:get/get.dart';

import '../controllers/change_sound_controller.dart';

class ChangeSoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeSoundController>(
      () => ChangeSoundController(),
    );
  }
}
