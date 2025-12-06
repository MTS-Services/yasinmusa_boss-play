import 'package:get/get.dart';

import '../modules/game_play/bindings/game_play_binding.dart';
import '../modules/game_play/views/game_play_view.dart';
import '../modules/game_result/bindings/game_result_binding.dart';
import '../modules/game_result/views/game_result_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/rating/bindings/rating_binding.dart';
import '../modules/rating/views/rating_view.dart';
import '../modules/restaurant_edited/bindings/restaurant_edited_binding.dart';
import '../modules/restaurant_edited/views/restaurant_edited_view.dart';
import '../modules/session_lobby/bindings/session_lobby_binding.dart';
import '../modules/session_lobby/views/session_lobby_view.dart';
import '../modules/will_pay/bindings/will_pay_binding.dart';
import '../modules/will_pay/views/will_pay_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GAME_PLAY,
      page: () => const GamePlayView(),
      binding: GamePlayBinding(),
    ),
    GetPage(
      name: _Paths.GAME_RESULT,
      page: () => const GameResultView(),
      binding: GameResultBinding(),
    ),
    GetPage(
      name: _Paths.WILL_PAY,
      page: () => const WillPayView(),
      binding: WillPayBinding(),
    ),
    GetPage(
      name: _Paths.SESSION_LOBBY,
      page: () => const SessionLobbyView(),
      binding: SessionLobbyBinding(),
    ),
    GetPage(
      name: _Paths.RATING,
      page: () => const RatingView(),
      binding: RatingBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT_EDITED,
      page: () => const RestaurantEditedView(),
      binding: RestaurantEditedBinding(),
    ),
  ];
}
