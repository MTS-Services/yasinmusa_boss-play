import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';

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
                    Image.asset(ImagePath.locationOnerProfile, scale: 4),
                    SizedBox(width: 2.w),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(130),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
