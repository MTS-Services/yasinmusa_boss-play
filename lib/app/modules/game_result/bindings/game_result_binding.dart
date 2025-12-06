import 'package:get/get.dart';

import '../controllers/game_result_controller.dart';

class GameResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameResultController>(
      () => GameResultController(),
    );
  }
}
