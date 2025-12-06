// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import '../../data/app_colors.dart';
// import '../../data/app_text_styles.dart';
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String? title;
//   final String? subTitle;
//
//   const CustomAppBar({super.key, this.title, this.subTitle});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20.w),
//       child: AppBar(
//         backgroundColor: AppColors.whiteColor,
//         elevation: 0,
//         scrolledUnderElevation: 0,
//         surfaceTintColor: Colors.transparent,
//         leadingWidth: 40.w,
//         leading: GestureDetector(
//           onTap: () => Get.back(),
//           child: Container(
//             margin: EdgeInsets.symmetric(vertical: 6.h),
//             decoration: BoxDecoration(
//               color: AppColors.appBarBack,
//               borderRadius: BorderRadius.circular(4.r),
//             ),
//             child: Padding(
//               padding: EdgeInsets.all(5.sp),
//               child: Image.asset(ImagePath.arrowBack),
//             ),
//           ),
//         ),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title ?? '', style: AppTextStyles.spaceGroteskMedium20),
//             if (subTitle != null)
//               Text(
//                 subTitle ?? '',
//                 style: AppTextStyles.regular14.copyWith(
//                   color: AppColors.appBarSub,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
