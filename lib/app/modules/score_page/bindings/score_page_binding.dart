import 'package:get/get.dart';

import '../controllers/score_page_controller.dart';

class ScorePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScorePageController>(
      () => ScorePageController(),
    );
  }
}
