import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';
import '../../../data/app_colors.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: buildProfile()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    "Settings",
                    style: AppTextStyles.regular24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  buildDecoratedBox(
                    title: 'Account',
                    icon: ImagePath.account,
                    onTap: () {
                      Get.toNamed(Routes.EDIT_PROFILE);
                    },
                  ),
                  buildDecoratedBox(
                    title: 'Privacy & Policy',
                    icon: ImagePath.privacyPolicy,
                    onTap: () {
                      Get.toNamed(Routes.PRIVACY_POLICY);
                    },
                  ),
                  buildDecoratedBox(
                    title: 'Terms & Condition',
                    icon: ImagePath.termsCondition,
                    onTap: () {
                      Get.toNamed(Routes.TERMS_CONDITIONS);
                    },
                  ),
                  buildDecoratedBox(
                    title: 'Help & Support',
                    icon: ImagePath.helpSupport,
                    onTap: () {
                      Get.toNamed(Routes.HELP_SUPPORT);
                    },
                  ),
                  buildDecoratedBox(
                    title: 'Sounds',
                    icon: ImagePath.sounds,
                    onTap: () {
                      Get.toNamed(Routes.SIGN_IN);
                    },
                  ),
                  buildDecoratedBox(
                    title: 'Log Out',
                    icon: ImagePath.logOut,
                    onTap: () {
                      Get.toNamed(Routes.SIGN_IN);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 35.r,
                backgroundColor: Colors.grey[200],
                backgroundImage: controller.pickedImage != null
                    ? FileImage(File(controller.pickedImage!.path))
                    : null,
              ),
              // if (profileController.pickedImage == null)
              Positioned(
                bottom: 3, // move upward if needed
                right: 10, // right side of the avatar
                child: InkWell(
                  onTap: () => controller.chooseImageFrom(),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      size: 12,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wade Warren",
                style: AppTextStyles.regular24.copyWith(color: Colors.white),
              ),
              Text(
                "Location Here",
                style: AppTextStyles.regular14.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDecoratedBox({
    required String title,
    required String icon,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFF252525),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
            child: Row(
              children: [
                Text(
                  title,
                  style: AppTextStyles.regular16.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                Spacer(),
                Image.asset(icon, height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
