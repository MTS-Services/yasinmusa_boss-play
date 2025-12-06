import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_enter_code_controller.dart';

class SignInEnterCodeView extends GetView<SignInEnterCodeController> {
  const SignInEnterCodeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignInEnterCodeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SignInEnterCodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
