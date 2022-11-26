import 'package:artikel/app/domain/entity/word.dart';

class FakeWordData {
  List<Word> _listWord = [];

  List<Word> get listWord {
    _listWord.add(Word(word: "Tisch", artikel: "der"));
    _listWord.add(Word(word: "Buch", artikel: "das"));
    return _listWord;
  }

  set listWord(List<Word> listWord) {
    _listWord = listWord;
  }
}
