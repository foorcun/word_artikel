import 'package:artikel/app/domain/word.dart';

abstract class IWordDal {
  Stream<List<Word>> getWordList();
  addWord(Word word);
  Future<void> deleteWord(Word w);
}
