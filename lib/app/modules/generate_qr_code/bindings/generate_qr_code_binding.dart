import 'package:get/get.dart';

import '../controllers/generate_qr_code_controller.dart';

class GenerateQrCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenerateQrCodeController>(
      () => GenerateQrCodeController(),
    );
  }
}
