import 'package:artikel/app/domain/entity/game_session.dart';
import 'package:artikel/app/modules/game_page/controllers/game_page_controller.dart';
import 'package:get/get.dart';

class ScorePageController extends GetxController {
  //TODO: Implement ScorePageController

  // var gameSession = Get.find<GamePageController>().finishedGameSession;

  var gameSession = (null as GameSession?).obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
