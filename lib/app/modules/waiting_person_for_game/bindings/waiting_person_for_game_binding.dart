import 'package:get/get.dart';

import '../controllers/waiting_person_for_game_controller.dart';

class WaitingPersonForGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaitingPersonForGameController>(
      () => WaitingPersonForGameController(),
    );
  }
}
