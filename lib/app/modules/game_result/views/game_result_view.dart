import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_result_controller.dart';

class GameResultView extends GetView<GameResultController> {
  const GameResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameResultView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GameResultView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
