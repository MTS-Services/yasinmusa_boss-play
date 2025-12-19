import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/welcome_back_controller.dart';

class WelcomeBackView extends GetView<WelcomeBackController> {
  const WelcomeBackView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back!",
                          style: AppTextStyles.medium24.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          "Ready to play?",
                          style: AppTextStyles.regular12.copyWith(
                            color: Color(0xFFc9c9c9),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.PROFILE);
                      },
                      child: Image.asset(
                        ImagePath.locationOnerProfile,
                        scale: 3.4,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    buildIconWidget(
                      icon: Icons.notifications_none,
                      onTap: () {
                        Get.toNamed(Routes.NOTIFICATIONS);
                      },
                      iconSize: 12,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      child: Row(
                        children: [
                          buildIconWidget(
                            icon: Icons.add,
                            onTap: () {
                              Get.toNamed(Routes.ADD_PLAYER_BY_QRCODE);
                            },
                          ),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Create New Session',
                                  style: AppTextStyles.medium16.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Text(
                                  'Start a new game and invite your friends',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: AppTextStyles.regular12.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text('Quick Stats', style: AppTextStyles.medium20),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: buildDecoratedBox(
                            color: Colors.blue,
                            title: 'Sessions',
                            subtitle: '120',
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: buildDecoratedBox(
                            color: Colors.pinkAccent,
                            title: 'Sessions',
                            subtitle: '120',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Text('All Activity', style: AppTextStyles.medium20),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF252525),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 16.h,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Create New Session',
                                  style: AppTextStyles.medium16.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Text(
                                  'Start a new game and invite your friends',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: AppTextStyles.regular12.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white.withAlpha(80),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '5 min ago',
                                style: AppTextStyles.regular10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }, childCount: 5),
            ),
          ],
        ),
      ),
    );
  }

  DecoratedBox buildDecoratedBox({
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: AppTextStyles.regular16.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                Spacer(),
                Image.asset(ImagePath.logOutHome, scale: 4),
              ],
            ),
            SizedBox(height: 40),
            Text(subtitle, style: AppTextStyles.bold32),
          ],
        ),
      ),
    );
  }

  Widget buildIconWidget({
    required IconData icon,
    VoidCallback? onTap,
    double? iconSize,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(80),
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: Colors.white, size: 22),
      ),
    );
  }
}
