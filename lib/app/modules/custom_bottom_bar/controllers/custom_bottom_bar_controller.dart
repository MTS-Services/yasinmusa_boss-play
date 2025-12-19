import 'package:get/get.dart';
import 'package:yasinmusa/app/modules/activitys/views/activitys_view.dart';
import 'package:yasinmusa/app/modules/restaurant_info/views/restaurant_info_view.dart';
import 'package:yasinmusa/app/modules/session_lobby/views/session_lobby_view.dart';

class CustomBottomBarController extends GetxController {
  var selectIndex = 0.obs;
  final screens = [
    RestaurantInfoView(),
    RestaurantInfoView(),
    SessionLobbyView(),
    ActivitysView(),
  ];

  void changeIndex(int index) {
    selectIndex.value = index;
  }
}
