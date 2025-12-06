import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_play_controller.dart';

class GamePlayView extends GetView<GamePlayController> {
  const GamePlayView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GamePlayView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GamePlayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
