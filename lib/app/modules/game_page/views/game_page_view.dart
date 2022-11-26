import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_page_controller.dart';

class GamePageView extends GetView<GamePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GamePageView'),
        centerTitle: true,
      ),
      body: GamePlayingWidget(controller: controller),
    );
  }
}

class GamePlayingWidget extends StatelessWidget {
  const GamePlayingWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GamePageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: QuestionWidget(controller: controller),
        ),
        Expanded(
          flex: 8,
          child: AnswerGroup(
            controller: controller,
          ),
        ),
      ],
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GamePageController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Obx(
        () => ListTile(
          title: Center(
            child: Text(
              controller
                  .gameSession.value!.words![controller.question.value].word!,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class AnswerGroup extends StatelessWidget {
  const AnswerGroup({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GamePageController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SizedBox()),
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                  buttonMethod("der");
                },
                child: Text("der"))),
        Expanded(child: SizedBox()),
        Expanded(
            child: ElevatedButton(
                onPressed: (() {
                  buttonMethod("die");
                }),
                child: Text("die"))),
        Expanded(child: SizedBox()),
        Expanded(
            child: ElevatedButton(
                onPressed: (() {
                  buttonMethod("das");
                }),
                child: Text("das"))),
        Expanded(child: SizedBox())
      ],
    );
  }

  buttonMethod(String answer) {
    //anwser check
    print(controller.checkAnswer(
        answer: answer,
        word: controller.gameSession.value!.words![controller.question.value]));

    if (controller.checkAnswer(
            answer: answer,
            word: controller
                .gameSession.value!.words![controller.question.value]) ==
        true) {
      controller.gameSession.value!.dogruSayisi =
          controller.gameSession.value!.dogruSayisi + 1;
      print("current " + controller.gameSession.value!.dogruSayisi.toString());
    }

// bitti or increment
    if (controller.words.length == controller.question.value + 1) {
      // controller.createGameSession();
      // print("giden " + controller.gameSession.value!.toString());
      Get.offNamed('/score-page', arguments: [controller.gameSession.value]);
    } else {
      controller.question.value++;
    }
  }
}
