import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/generate_qr_code_controller.dart';

class GenerateQrCodeView extends GetView<GenerateQrCodeController> {
  const GenerateQrCodeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GenerateQrCodeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GenerateQrCodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
