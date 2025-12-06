import 'package:get/get.dart';

import '../controllers/game_play_controller.dart';

class GamePlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GamePlayController>(
      () => GamePlayController(),
    );
  }
}
