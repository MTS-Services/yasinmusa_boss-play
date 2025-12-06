import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/session_lobby_controller.dart';

class SessionLobbyView extends GetView<SessionLobbyController> {
  const SessionLobbyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SessionLobbyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SessionLobbyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
