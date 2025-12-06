import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text('HomeView is working', style: TextStyle(fontSize: 20,color: Colors.white)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("data")),
              ),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
