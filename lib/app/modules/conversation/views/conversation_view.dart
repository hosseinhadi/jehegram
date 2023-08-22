import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/conversation_controller.dart';

class ConversationView extends GetView<ConversationController> {
  const ConversationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("controller."),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ConversationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
