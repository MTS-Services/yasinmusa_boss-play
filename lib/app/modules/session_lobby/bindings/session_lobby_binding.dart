import 'package:get/get.dart';

import '../controllers/session_lobby_controller.dart';

class SessionLobbyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SessionLobbyController>(
      () => SessionLobbyController(),
    );
  }
}
