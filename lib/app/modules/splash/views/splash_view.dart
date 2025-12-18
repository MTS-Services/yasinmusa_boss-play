import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/app_colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
 const SplashView({super.key});
  @override

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: Text(
          'Boss Pays',
          style: TextStyle(fontSize: 47.sp,color: AppColors.whiteColor,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
