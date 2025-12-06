import 'package:get/get.dart';

import '../modules/enter_new_password/bindings/enter_new_password_binding.dart';
import '../modules/enter_new_password/views/enter_new_password_view.dart';
import '../modules/forgot_enter_code/bindings/forgot_enter_code_binding.dart';
import '../modules/forgot_enter_code/views/forgot_enter_code_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/game_play/bindings/game_play_binding.dart';
import '../modules/game_play/views/game_play_view.dart';
import '../modules/game_result/bindings/game_result_binding.dart';
import '../modules/game_result/views/game_result_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/rating/bindings/rating_binding.dart';
import '../modules/rating/views/rating_view.dart';
import '../modules/registration_play_game/bindings/registration_play_game_binding.dart';
import '../modules/registration_play_game/views/registration_play_game_view.dart';
import '../modules/restaurant_edited/bindings/restaurant_edited_binding.dart';
import '../modules/restaurant_edited/views/restaurant_edited_view.dart';
import '../modules/session_lobby/bindings/session_lobby_binding.dart';
import '../modules/session_lobby/bindings/session_lobby_binding.dart';
import '../modules/session_lobby/views/session_lobby_view.dart';
import '../modules/session_lobby/views/session_lobby_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_in_enter_code/bindings/sign_in_enter_code_binding.dart';
import '../modules/sign_in_enter_code/views/sign_in_enter_code_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/will_pay/bindings/will_pay_binding.dart';
import '../modules/will_pay/views/will_pay_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SESSION_LOBBY;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN_ENTER_CODE,
      page: () => const SignInEnterCodeView(),
      binding: SignInEnterCodeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_ENTER_CODE,
      page: () => const ForgotEnterCodeView(),
      binding: ForgotEnterCodeBinding(),
    ),
    GetPage(
      name: _Paths.ENTER_NEW_PASSWORD,
      page: () => const EnterNewPasswordView(),
      binding: EnterNewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION_PLAY_GAME,
      page: () => const RegistrationPlayGameView(),
      binding: RegistrationPlayGameBinding(),
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
      children: [
        GetPage(
          name: _Paths.SESSION_LOBBY,
          page: () => const SessionLobbyView(),
          binding: SessionLobbyBinding(),
        ),
      ],
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
