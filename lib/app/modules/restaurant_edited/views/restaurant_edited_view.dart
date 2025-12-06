import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/restaurant_edited_controller.dart';

class RestaurantEditedView extends GetView<RestaurantEditedController> {
  const RestaurantEditedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RestaurantEditedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RestaurantEditedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
