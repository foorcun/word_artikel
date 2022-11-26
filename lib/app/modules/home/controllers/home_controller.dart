import 'package:artikel/app/data/datasource/word/i_word_dal.dart';
import 'package:artikel/app/domain/word.dart';
import 'package:artikel/injector.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final words = <Word>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    words.bindStream(injector.get<IWordDal>().getWordList());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
