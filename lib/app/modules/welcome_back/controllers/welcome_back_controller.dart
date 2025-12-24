import 'package:get/get.dart';

class WelcomeBackController extends GetxController {
  bool joinSession = false;

  @override
  void onInit() {
    super.onInit();
    joinSession = Get.arguments?['joinSession'] ?? false;
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
