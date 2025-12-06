import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/terms_conditions_controller.dart';

class TermsConditionsView extends GetView<TermsConditionsController> {
  const TermsConditionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermsConditionsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TermsConditionsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
