import 'package:artikel/app/data/datasource/word/i_word_dal.dart';
import 'package:artikel/app/domain/entity/game_session.dart';
import 'package:artikel/app/domain/entity/word.dart';
import 'package:artikel/injector.dart';
import 'package:get/get.dart';

class GamePageController extends GetxController {
  //TODO: Implement GamePageController
  final words = <Word>[].obs;

  // ignore: unnecessary_cast
  var gameSession = (null as GameSession?).obs;

  // var finishedGameSession = (null as GameSession?).obs;

  final question = 0.obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    words.bindStream(injector.get<IWordDal>().getWordList());
    ever(words, (_) => createGameSession());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => gameSession.value!.increment();

  void createGameSession() {
    // finishedGameSession.value = gameSession.value;
    gameSession.value = GameSession(words: words.value);
  }

  bool checkAnswer({required String answer, required Word word}) {
    return answer == word.artikel;
  }
}
