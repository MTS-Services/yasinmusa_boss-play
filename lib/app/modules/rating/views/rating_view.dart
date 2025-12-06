import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rating_controller.dart';

class RatingView extends GetView<RatingController> {
  const RatingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RatingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RatingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
