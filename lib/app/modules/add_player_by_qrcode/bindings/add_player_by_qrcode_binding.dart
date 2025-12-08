import 'package:get/get.dart';

import '../controllers/add_player_by_qrcode_controller.dart';

class AddPlayerByQrcodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPlayerByQrcodeController>(
      () => AddPlayerByQrcodeController(),
    );
  }
}
