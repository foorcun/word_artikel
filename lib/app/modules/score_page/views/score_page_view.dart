import 'package:artikel/app/domain/entity/game_session.dart';
import 'package:artikel/app/modules/game_page/controllers/game_page_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/score_page_controller.dart';

class ScorePageView extends GetView<ScorePageController> {
  // ScorePageView({super.key}) {
  //   controller.gameSession.value = Get.arguments[0];
  //   // // print(controller.gameSession.value!.dogruSayisi.toString());
  //   // print(Get.arguments[0].toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScorePageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: Center(
              child: Text(
                // "score: ${controller.gameSession.value!.dogruSayisi.toString()}/${controller.gameSession.value!.words!.length.toString()}",
                // "score: ${Get.arguments[0].dogruSayisi.toString()}/${controller.gameSession.value!.words!.length.toString()}",
                getGameSession().dogruSayisi.toString() +
                    "/" +
                    getGameSession().words!.length.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // Get.find<GamePageController>().createGameSession();
                Get.toNamed("/game-page");
              },
              // child: Text("New Game ${Get.arguments[0]} "))
              child: Text("New Game"))
        ],
      ),
    );
  }

  GameSession getGameSession() {
    // GameSession gS = Get.arguments[0];
    return Get.arguments[0];

    // return gS.dogruSayisi.toString();
  }
}
