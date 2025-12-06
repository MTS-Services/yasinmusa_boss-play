import 'package:get/get.dart';

import '../modules/enter_new_password/bindings/enter_new_password_binding.dart';
import '../modules/enter_new_password/views/enter_new_password_view.dart';
import '../modules/forgot_enter_code/bindings/forgot_enter_code_binding.dart';
import '../modules/forgot_enter_code/views/forgot_enter_code_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/registration_play_game/bindings/registration_play_game_binding.dart';
import '../modules/registration_play_game/views/registration_play_game_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_in_enter_code/bindings/sign_in_enter_code_binding.dart';
import '../modules/sign_in_enter_code/views/sign_in_enter_code_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';

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
  ];
}
