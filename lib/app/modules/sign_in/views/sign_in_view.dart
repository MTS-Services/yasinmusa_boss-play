import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';

import '../../common_widgets/custom_text_field.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: SafeArea(
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
                Text('Sign In', style: AppTextStyles.SpaceGroteskBold32),
                Text(
                  'Access your account to continue.',
                  style: AppTextStyles.regular16.copyWith(
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(height: 30.w),
                CustomTextField(
                  hintText: 'youremail@here',
                  hintTopText: 'Email',
                ),
                CustomTextField(
                  hintText: '**********',
                  hintTopText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: AppTextStyles.bold16.copyWith(
                      color: AppColors.starFleetBlueColor,
                    ),
                  ),
                ),
                SizedBox(height: 32.w),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign In'),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 32.h),
                  child: Row(
                    children: [
                      Expanded(child: Divider(color: AppColors.dividerColor, height: 1)),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          'Or',
                          style: AppTextStyles.regular16.copyWith(
                            color: AppColors.dividerColor,
                          ),
                        ),
                      ),
                      Expanded(child: Divider(color: AppColors.dividerColor,height: 1,)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
