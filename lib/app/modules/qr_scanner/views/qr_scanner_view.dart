import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import 'package:yasinmusa/app/routes/app_pages.dart';

import '../controllers/qr_scanner_controller.dart';

class QrScannerView extends GetView<QrScannerController> {
  const QrScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Scan QR Code',
        subTitle: 'Point your camera at a QR code and capture it',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16),
        child: Column(
          children: [
            Expanded(
              child: QRView(
                key: controller.qrKey,
                onQRViewCreated: controller.onQRViewCreated,
                overlay: QrScannerOverlayShape(
                  borderColor: Colors.green,
                  borderRadius: 12,
                  borderLength: 30,
                  borderWidth: 8,
                  cutOutSize: 280,
                ),
                onPermissionSet: (_, p) => controller.onPermissionSet(p),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  controller.resultText.isEmpty
                      ? 'Scan a QR code'
                      : 'Result: ${controller.resultText.value}',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            Text(
              "Join With Code",
              style: AppTextStyles.regular20.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 10.h,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.toNamed(Routes.GAME_PLAY);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.whiteColor
                  ),
                  child: Text("Enter Code",style: AppTextStyles.regular14.copyWith(color: AppColors.d7Black),)),
            ),
            SizedBox(height: 45.h,),
          ],
        ),
      ),
    );
  }
}