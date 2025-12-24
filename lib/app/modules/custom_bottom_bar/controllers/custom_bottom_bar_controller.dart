import 'package:get/get.dart';
import 'package:yasinmusa/app/modules/activitys/views/activitys_view.dart';
import 'package:yasinmusa/app/modules/notifications/views/notifications_view.dart';
import 'package:yasinmusa/app/modules/profile/views/profile_view.dart';
import 'package:yasinmusa/app/modules/restaurant_info/views/restaurant_info_view.dart';
import 'package:yasinmusa/app/modules/session_lobby/views/session_lobby_view.dart';
import 'package:yasinmusa/app/modules/welcome_back/views/welcome_back_view.dart';

class CustomBottomBarController extends GetxController {
  var selectIndex = 0.obs;
  final screens = [
    WelcomeBackView(),
    NotificationsView(),
    ProfileView(),
    ActivitysView(),
  ];

  void changeIndex(int index) {
    selectIndex.value = index;
  }
}
