import 'dart:async';
import 'package:get/get.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';
import '../../select_who_you_are/views/select_who_you_are_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.SELECT_WHO_YOU_ARE);
    });
  }

}
