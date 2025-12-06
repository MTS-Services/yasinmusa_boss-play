import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registration_play_game_controller.dart';

class RegistrationPlayGameView extends GetView<RegistrationPlayGameController> {
  const RegistrationPlayGameView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegistrationPlayGameView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegistrationPlayGameView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
