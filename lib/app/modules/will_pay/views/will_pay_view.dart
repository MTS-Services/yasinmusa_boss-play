import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/will_pay_controller.dart';

class WillPayView extends GetView<WillPayController> {
  const WillPayView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WillPayView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WillPayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
