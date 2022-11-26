import 'package:artikel/app/domain/entity/word.dart';

abstract class IWordDal {
  Stream<List<Word>> getWordList();
  addWord(Word word);
  Future<void> deleteWord(Word w);
}
