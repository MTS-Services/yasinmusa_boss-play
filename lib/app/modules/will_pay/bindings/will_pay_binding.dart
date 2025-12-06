import 'package:get/get.dart';

import '../controllers/will_pay_controller.dart';

class WillPayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WillPayController>(
      () => WillPayController(),
    );
  }
}
