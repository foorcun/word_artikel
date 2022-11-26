import 'package:artikel/app/data/datasource/word/fake_word_dal.dart';
import 'package:artikel/app/data/datasource/word/i_word_dal.dart';
import 'package:get_it/get_it.dart';

// link : https://www.youtube.com/watch?v=DbV5RV2HRUk&ab_channel=FlutterExplained
final injector = GetIt.instance;

void setup() {
  injector.registerLazySingleton<IWordDal>(() => FakeWordDal());
}
