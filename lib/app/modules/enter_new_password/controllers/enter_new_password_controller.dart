import 'package:get/get.dart';

class EnterNewPasswordController extends GetxController {
  RxBool isVisibleAdd = true.obs;
  RxBool isVisibleConfirm = true.obs;

  void isVisibleAddOnTap() {
    isVisibleAdd.value = !isVisibleAdd.value;
  }

  void isVisibleConfirmOnTap() {
    isVisibleConfirm.value = !isVisibleConfirm.value;
  }
}
