import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => ListView.builder(
            itemCount: controller.words.length,
            itemBuilder: (context, index) {
              var words = controller.words;
              return Card(
                child: ListTile(
                  title: Text(words[index].word!),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
