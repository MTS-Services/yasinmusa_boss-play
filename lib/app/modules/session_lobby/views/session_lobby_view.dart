import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/session_lobby_controller.dart';

class SessionLobbyView extends GetView<SessionLobbyController> {
  const SessionLobbyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 167.h,
                width: 172.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
