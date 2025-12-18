import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final String hintTopText;
  final Icon? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? obscureText ;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.hintTopText,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Text(
            hintTopText,
            style: AppTextStyles.regular12.copyWith(
              color: AppColors.topHintColor,
            ),
          ),
        ),

        TextFormField(
          style: TextStyle(color: AppColors.whiteColor),
          cursorColor: AppColors.whiteColor,
          cursorHeight: 24,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.primaryColor,
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.whiteColor),
            suffixIcon: suffixIcon,
            suffixIconColor: suffixIconColor ?? AppColors.whiteColor,
            prefixIcon: prefixIcon,
            prefixIconColor: prefixIconColor ?? AppColors.whiteColor,
          ),
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
