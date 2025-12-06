import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/enter_new_password_controller.dart';

class EnterNewPasswordView extends GetView<EnterNewPasswordController> {
  const EnterNewPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EnterNewPasswordView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EnterNewPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
