import 'package:get/get.dart';

import '../controllers/session_lobby_two_controller.dart';

class SessionLobbyTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SessionLobbyTwoController>(
      () => SessionLobbyTwoController(),
    );
  }
}
