import 'dart:async';
import 'package:get/get.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.SELECT_WHO_YOU_ARE);
    });
  }

}
