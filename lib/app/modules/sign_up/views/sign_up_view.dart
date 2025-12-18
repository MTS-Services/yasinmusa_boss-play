import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../data/image_path.dart';
import '../../../routes/app_pages.dart';
import '../../common_widgets/custom_text_field.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 40.h,
                  horizontal: 16.h,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondaryBlackColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Sign Up', style: AppTextStyles.SpaceGroteskBold32),
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
                    CustomTextField(
                      hintText: '**********',
                      hintTopText: 'Confirm Password',
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
                        onPressed: () {
                          Get.toNamed(Routes.SIGN_IN_ENTER_CODE);
                        },
                        child: Text('Sign Up'),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Already Have an account ?",
                            style: AppTextStyles.regular16.copyWith(
                              color: AppColors.topHintColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.SIGN_UP);
                            },
                            child: InkWell(
                              onTap: (){
                                Get.toNamed(Routes.SIGN_IN);
                              },
                              child: Text(
                                'Sign In',
                                style: AppTextStyles.bold16.copyWith(
                                  color: AppColors.starFleetBlueColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
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
    );
  }
}
