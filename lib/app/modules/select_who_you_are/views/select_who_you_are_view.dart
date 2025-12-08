import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';

import '../controllers/select_who_you_are_controller.dart';

class SelectWhoYouAreView extends GetView<SelectWhoYouAreController> {
  const SelectWhoYouAreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImagePath.selectScreen),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 30.h),
                margin: EdgeInsets.symmetric(horizontal: 16.w,),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.secondaryBlackColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  children: [
                    Text('Select who you are?',style: AppTextStyles.bold20,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('Customer'))),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                        ),
                        child: Text('Location Owner'),
                      ),
                    )
                    ,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
