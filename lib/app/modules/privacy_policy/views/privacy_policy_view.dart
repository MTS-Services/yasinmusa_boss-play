import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import '../controllers/privacy_policy_controller.dart';

class PrivacyPolicyView extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Privacy Policy"),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Title
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),

              /// Last Updated + Intro
              _buildTextRegular(
                padding: 14,
                text:
                'Last Updated: 20/01/2026\n'
                    'This Privacy Policy explains how we collect, use, and protect your information when you use our mobile application (“App”). By using the App, you agree to the terms described in this Privacy Policy.',
              ),

              // ---------------------------------------------------
              // 1. INFORMATION WE COLLECT
              // ---------------------------------------------------
              _buildTextBold(text: '1. Information We Collect'),

              _buildTextRegular(padding: 14, text: 'a) Personal Information'),
              _buildTextRegular(text: 'We may collect personal information that you provide directly, such as:'),

              _buildTextRegularBulletPoint(text: 'Name'),
              _buildTextRegularBulletPoint(text: 'Email address'),
              _buildTextRegularBulletPoint(text: 'Phone number'),
              _buildTextRegularBulletPoint(text: 'Profile information'),
              _buildTextRegularBulletPoint(
                text: 'Payment details (processed via secure third-party providers)',
              ),

              _buildTextRegular(padding: 14, text: 'b) Usage Data'),
              _buildTextRegular(text: 'We automatically collect information when you use the App, including:'),

              _buildTextRegularBulletPoint(text: 'Device information (model, OS version)'),
              _buildTextRegularBulletPoint(text: 'IP address'),
              _buildTextRegularBulletPoint(text: 'App usage activities'),
              _buildTextRegularBulletPoint(text: 'Crash logs and performance data'),

              _buildTextRegular(padding: 14, text: 'c) Cookies & Tracking'),
              _buildTextRegular(
                text: 'We may use cookies, analytics tools, and similar technologies to improve user experience.',
              ),

              // ---------------------------------------------------
              // 2. HOW WE USE YOUR INFORMATION
              // ---------------------------------------------------
              _buildTextBold(text: '2. How We Use Your Information'),
              _buildTextRegular(text: 'We use your information to:'),

              _buildTextRegularBulletPoint(text: 'Create and manage user accounts'),
              _buildTextRegularBulletPoint(text: 'Provide and improve App services'),
              _buildTextRegularBulletPoint(text: 'Process payments securely'),
              _buildTextRegularBulletPoint(text: 'Connect users within the App'),
              _buildTextRegularBulletPoint(text: 'Send notifications and important updates'),
              _buildTextRegularBulletPoint(text: 'Prevent fraud and ensure safety'),
              _buildTextRegularBulletPoint(text: 'Improve performance and user experience'),

              // ---------------------------------------------------
              // 3. HOW WE SHARE YOUR INFORMATION
              // ---------------------------------------------------
              _buildTextBold(text: '3. How We Share Your Information'),
              _buildTextRegular(text: 'We do not sell your personal data. We may share information only with:'),

              _buildTextRegularBulletPoint(text: 'Service providers (payment gateways, analytics, hosting)'),
              _buildTextRegularBulletPoint(text: 'Legal authorities (if required by law)'),
              _buildTextRegularBulletPoint(text: 'Business partners (only when necessary and with protection)'),

              _buildTextRegular(
                padding: 14,
                text: 'All shared data follows strict privacy and security guidelines.',
              ),

              // ---------------------------------------------------
              // 4. DATA STORAGE & SECURITY
              // ---------------------------------------------------
              _buildTextBold(text: '4. Data Storage & Security'),
              _buildTextRegular(
                text:
                'We use industry-standard security methods to protect your information from unauthorized access, loss, or misuse. However, no online system is 100% secure, and we cannot guarantee absolute protection.',
              ),

              // ---------------------------------------------------
              // 5. YOUR RIGHTS
              // ---------------------------------------------------
              _buildTextBold(text: '5. Your Rights'),
              _buildTextRegular(text: 'Depending on your region, you may have the right to:'),

              _buildTextRegularBulletPoint(text: 'Access your personal data'),
              _buildTextRegularBulletPoint(text: 'Update or delete your information'),
              _buildTextRegularBulletPoint(text: 'Disable certain permissions'),
              _buildTextRegularBulletPoint(text: 'Stop receiving notifications'),
              _buildTextRegularBulletPoint(text: 'Request account deletion'),

              _buildTextRegular(
                padding: 14,
                text: 'To request any action, contact us at [Your Support Email].',
              ),

              // ---------------------------------------------------
              // 6. THIRD-PARTY SERVICES
              // ---------------------------------------------------
              _buildTextBold(text: '6. Third-Party Services'),
              _buildTextRegular(
                text:
                'Our App may integrate third-party services (payment, login, analytics). '
                    'These services have their own Privacy Policies, and we encourage you to review them.',
              ),

              // ---------------------------------------------------
              // 7. CHILDREN’S PRIVACY
              // ---------------------------------------------------
              _buildTextBold(text: '7. Children’s Privacy'),
              _buildTextRegular(
                text:
                'Our App does not knowingly collect information from children under 13. '
                    'If such information was collected unintentionally, we will delete it immediately.',
              ),

              // ---------------------------------------------------
              // 8. CHANGES TO THIS PRIVACY POLICY
              // ---------------------------------------------------
              _buildTextBold(text: '8. Changes to This Privacy Policy'),
              _buildTextRegular(
                text:
                'We may update this Privacy Policy from time to time. '
                    'We will notify users of any major changes by App notification or email.',
              ),

              // ---------------------------------------------------
              // 9. CONTACT US
              // ---------------------------------------------------
              _buildTextBold(text: '9. Contact Us'),
              _buildTextRegular(
                padding: 14,
                text: 'If you have any questions about this Privacy Policy, please contact us at:',
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
