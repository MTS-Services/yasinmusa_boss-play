import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/image_path.dart';

class NotificationsController extends GetxController {
  final RxList<Map<String, dynamic>> data = [
    {
      'color': AppColors.starFleetBlueColor,
      'icon': ImagePath.person,
      'title': 'Session Request',
      'subTitle': 'Alex wants to start a new session with you',
      'time': '2 min ago',
    },
    {
      'color': AppColors.secondaryColor,
      'icon': ImagePath.notification,
      'title': 'Reminder Alert',
      'subTitle': 'Your scheduled session will start soon',
      'time': '10 min ago',
    },
    {
      'color': AppColors.greenJuiceColor,
      'icon': ImagePath.award,
      'title': 'Achievement Unlocked',
      'subTitle': 'You have reached a new milestone',
      'time': '1 hour ago',
    },
    {
      'color': AppColors.peachYellowColor,
      'icon': ImagePath.gift,
      'title': 'Special Reward',
      'subTitle': 'You received a gift from the team',
      'time': 'Yesterday',
    },
  ].obs;
}
