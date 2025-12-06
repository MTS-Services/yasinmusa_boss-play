import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';
import '../../data/image_path.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subTitle;

  const CustomAppBar({super.key, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        leadingWidth: 42.w,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(6.sp),
              child: Image.asset(ImagePath.arrowBack),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title ?? '', style: AppTextStyles.medium24),
            if (subTitle != null)
              Text(
                subTitle ?? '',
                style: AppTextStyles.regular12.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
