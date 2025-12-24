import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

class QrScannerController extends GetxController {
// QRView Controller
  QRViewController? qrController;

  // QRView Global Key
  final qrKey = GlobalKey(debugLabel: 'QR');

  // Scanned result
  var resultText = ''.obs;

  @override
  void onClose() {
    qrController?.dispose();
    super.onClose();
  }

  // QRView created callback
  void onQRViewCreated(QRViewController controller) {
    qrController = controller;

    // Listen to scanned data
    controller.scannedDataStream.listen((scanData) {
      resultText.value = scanData.code ?? '';
    });
  }

  // Permission callback
  void onPermissionSet(bool permission) {
    log('QR Permission: $permission');
    if (!permission) {
      Get.snackbar('Permission Denied', 'Camera permission is required');
    }
  }

  // Pause camera
  void pauseCamera() {
    qrController?.pauseCamera();
  }

  // Resume camera
  void resumeCamera() {
    qrController?.resumeCamera();
  }

  // Toggle flash
  Future<void> toggleFlash() async {
    await qrController?.toggleFlash();
  }

  // Flip camera
  Future<void> flipCamera() async {
    await qrController?.flipCamera();
  }

  // Hot reload handling
  void reassembleCamera() {
    if (Platform.isAndroid) {
      qrController?.pauseCamera();
    }
    qrController?.resumeCamera();
  }
}
