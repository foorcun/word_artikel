import 'package:artikel/app/data/datasource/word/fake_word_data.dart';
import 'package:artikel/app/data/datasource/word/i_word_dal.dart';
import 'package:artikel/app/domain/entity/word.dart';

class FakeWordDal extends IWordDal {
  @override
  addWord(Word word) {
    // TODO: implement addWord
    throw UnimplementedError();
  }

  @override
  Future<void> deleteWord(Word w) {
    // TODO: implement deleteWord
    throw UnimplementedError();
  }

  @override
  Stream<List<Word>> getWordList() async* {
    // TODO: implement wordList
    yield FakeWordData().listWord;
  }
}
