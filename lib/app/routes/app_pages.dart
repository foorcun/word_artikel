import 'package:get/get.dart';

import '../modules/game_page/bindings/game_page_binding.dart';
import '../modules/game_page/views/game_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/score_page/bindings/score_page_binding.dart';
import '../modules/score_page/views/score_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.GAME_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GAME_PAGE,
      page: () => GamePageView(),
      binding: GamePageBinding(),
    ),
    GetPage(
      name: _Paths.SCORE_PAGE,
      page: () => ScorePageView(),
      binding: ScorePageBinding(),
    ),
  ];
}
