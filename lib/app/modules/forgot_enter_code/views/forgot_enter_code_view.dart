import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_enter_code_controller.dart';

class ForgotEnterCodeView extends GetView<ForgotEnterCodeController> {
  const ForgotEnterCodeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgotEnterCodeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgotEnterCodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
