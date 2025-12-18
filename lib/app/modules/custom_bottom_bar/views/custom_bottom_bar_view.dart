import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/app_colors.dart';
import '../../../data/image_path.dart';
import '../controllers/custom_bottom_bar_controller.dart';

class CustomBottomBarView extends GetView<CustomBottomBarController> {
  const CustomBottomBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectIndex.value]),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Obx(
          () => ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: BottomNavigationBar(
              backgroundColor: AppColors.backgroundBlur,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.green,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.grey,


              currentIndex: controller.selectIndex.value,
              onTap: controller.changeIndex,
              items: [
                BottomNavigationBarItem(
                  icon: navIcon(
                    image: ImagePath.home,
                    index: 0,
                    controller: controller,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: navIcon(
                    image: ImagePath.notification,
                    index: 1,
                    controller: controller,
                  ),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: navIcon(
                    image: ImagePath.personIcon,
                    index: 2,
                    controller: controller,
                  ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: navIcon(
                    image: ImagePath.activityIcon,
                    index: 3,
                    controller: controller,
                  ),
                  label: 'Activity',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navIcon({
    required String image,
    required int index,
    required CustomBottomBarController controller,
  }) {
    final isSelected = controller.selectIndex.value == index;

    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? AppColors.secondaryColor : AppColors.grey8B,
      ),
      child: Image.asset(image, color: AppColors.whiteColor, scale: 4),
    );
  }
}
