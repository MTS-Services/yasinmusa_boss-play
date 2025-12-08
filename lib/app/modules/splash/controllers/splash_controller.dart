import 'dart:async';
import 'package:get/get.dart';
import '../../select_who_you_are/views/select_who_you_are_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 2), () {
      Get.off(() => SelectWhoYouAreView());
    });
  }
}
