import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../common_widgets/custom_app_bar.dart';
import '../controllers/terms_conditions_controller.dart';

class TermsConditionsView extends GetView<TermsConditionsController> {
  const TermsConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Terms & Conditions"),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Title
              Text(
                'Terms & Conditions',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),

              SizedBox(height: 12.h),

              /// Last Updated
              _buildTextRegular(text: 'Last Updated: 20/01/2026'),

              /// Intro
              _buildTextRegular(
                padding: 14,
                text:
                'Welcome to our mobile application (“App”). By downloading or using this App, you agree to follow these Terms & Conditions. If you do not agree, please do not use the App.',
              ),

              // ---------------------------------------------------
              // 1. Use of the App
              // ---------------------------------------------------
              _buildTextBold(text: '1. Use of the App'),

              _buildTextRegular(
                text: 'You must use the App responsibly and only for lawful purposes. You agree not to:',
              ),

              _buildTextRegularBulletPoint(text: 'Misuse the App or attempt unauthorized access'),
              _buildTextRegularBulletPoint(text: 'Upload harmful, illegal, or abusive content'),
              _buildTextRegularBulletPoint(text: 'Engage in fraudulent activities'),
              _buildTextRegularBulletPoint(text: 'Violate others’ privacy or rights'),

              // ---------------------------------------------------
              // 2. Account Registration
              // ---------------------------------------------------
              _buildTextBold(text: '2. Account Registration'),

              _buildTextRegular(
                text: 'To use certain features, you may need to create an account. You agree to:',
              ),

              _buildTextRegularBulletPoint(text: 'Provide accurate information'),
              _buildTextRegularBulletPoint(text: 'Keep your login details secure'),
              _buildTextRegularBulletPoint(text: 'Be responsible for all activities under your account'),

              _buildTextRegular(
                padding: 14,
                text: 'We may suspend or delete accounts that violate our rules.',
              ),

              // ---------------------------------------------------
              // 3. Payments & Subscriptions
              // ---------------------------------------------------
              _buildTextBold(text: '3. Payments & Subscriptions'),

              _buildTextRegular(
                text:
                'If the App provides paid features:\nAll payments are processed securely via third-party payment providers.\nPrices and fees may change, and you will be notified of changes.\nRefunds follow our refund policy (if applicable).',
              ),

              // ---------------------------------------------------
              // 4. User Content
              // ---------------------------------------------------
              _buildTextBold(text: '4. User Content'),

              _buildTextRegular(text: 'You may upload or submit content within the App. You agree that:'),

              _buildTextRegularBulletPoint(text: 'Your content must not violate any laws'),
              _buildTextRegularBulletPoint(text: 'You own or have permission to use the content'),
              _buildTextRegularBulletPoint(text: 'We may use your content to operate and improve the App'),
              _buildTextRegularBulletPoint(text: 'We may remove content that violates our guidelines'),

              // ---------------------------------------------------
              // 5. Intellectual Property
              // ---------------------------------------------------
              _buildTextBold(text: '5. Intellectual Property'),

              _buildTextRegular(
                text:
                'Everything in the App (logo, design, text, code, features) belongs to the App owner. You are not allowed to:',
              ),

              _buildTextRegularBulletPoint(text: 'Copy or distribute content'),
              _buildTextRegularBulletPoint(text: 'Recreate or reverse-engineer the App'),
              _buildTextRegularBulletPoint(text: 'Use our trademarks without permission'),

              // ---------------------------------------------------
              // 6. Third-Party Services
              // ---------------------------------------------------
              _buildTextBold(text: '6. Third-Party Services'),
              _buildTextRegular(
                text:
                'The App may use third-party APIs, payment systems, or analytics. We are not responsible for their actions, privacy practices, or terms. Please review their policies separately.',
              ),

              // ---------------------------------------------------
              // 7. Termination
              // ---------------------------------------------------
              _buildTextBold(text: '7. Termination'),
              _buildTextRegular(
                text:
                'We may suspend or terminate your account or access to the App if:\n- You violate these Terms\n- You misuse the App\n- Required by law\nYou may also stop using the App at any time by deleting your account.',
              ),

              // ---------------------------------------------------
              // 8. Liability Limitation
              // ---------------------------------------------------
              _buildTextBold(text: '8. Liability Limitation'),
              _buildTextRegular(
                text:
                'We are not responsible for:\n- Loss of data\n- Financial loss\n- Damages caused by using or not being able to use the App\nYou use the App “as is” and at your own risk.',
              ),

              // ---------------------------------------------------
              // 9. Changes to Terms
              // ---------------------------------------------------
              _buildTextBold(text: '9. Changes to Terms'),
              _buildTextRegular(
                text:
                'We may update these Terms from time to time. Continued use of the App means you accept the updated Terms.',
              ),

              // ---------------------------------------------------
              // 10. Contact Us
              // ---------------------------------------------------
              _buildTextBold(text: '10. Contact Us'),
              _buildTextRegular(
                padding: 14,
                text: 'If you have any questions about these Terms & Conditions, contact us:',
              ),
              _buildTextRegular(text: 'Email: [your email]'),
            ],
          ),
        ),
      ),
    );
  }

  // ------------------------------
  // Custom Text Widgets
  // ------------------------------

  Widget _buildTextBold({required String text, double? padding}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding ?? 0.h),
      child: Text(
        text,
        style: AppTextStyles.bold22,
        textAlign: TextAlign.start,
      ),
    );
  }

  Padding _buildTextRegular({required String text, double? padding}) => Padding(
    padding: EdgeInsets.symmetric(vertical: padding ?? 0.h),
    child: Text(
      text,
      style: AppTextStyles.regular16,
      softWrap: true,
      maxLines: null,
    ),
  );

  Widget _buildTextRegularBulletPoint({required String text, double? padding}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding ?? 0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6.h, right: 8.w),
            child: CircleAvatar(
              maxRadius: 4.r,
              backgroundColor: AppColors.whiteColor,
            ),
          ),
          Flexible(
            child: Text(
              text,
              style: AppTextStyles.regular16,
              softWrap: true,
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }
}
