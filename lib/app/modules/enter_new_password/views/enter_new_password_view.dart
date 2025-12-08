import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../common_widgets/custom_text_field.dart';
import '../controllers/enter_new_password_controller.dart';

class EnterNewPasswordView extends GetView<EnterNewPasswordController> {
  const EnterNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 16.h),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.secondaryBlackColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Enter new Password',
                    style: AppTextStyles.SpaceGroteskBold32,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Make your Strong pass word',
                    style: AppTextStyles.regular16.copyWith(
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(height: 30.w),
                  CustomTextField(
                    hintText: '************',
                    hintTopText: 'Add new password',
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                  ),
                  CustomTextField(
                    hintText: '************',
                    hintTopText: 'Confirm Password ',
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.ENTER_NEW_PASSWORD);
                      },
                      child: Text('Save new password'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
