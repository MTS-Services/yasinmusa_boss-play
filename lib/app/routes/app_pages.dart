import 'package:get/get.dart';

import '../modules/add_player_by_qrcode/bindings/add_player_by_qrcode_binding.dart';
import '../modules/add_player_by_qrcode/views/add_player_by_qrcode_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
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
import '../modules/help_support/bindings/help_support_binding.dart';
import '../modules/help_support/views/help_support_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/privacy_policy/bindings/privacy_policy_binding.dart';
import '../modules/privacy_policy/views/privacy_policy_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/rating/bindings/rating_binding.dart';
import '../modules/rating/views/rating_view.dart';
import '../modules/registration_play_game/bindings/registration_play_game_binding.dart';
import '../modules/registration_play_game/views/registration_play_game_view.dart';
import '../modules/restaurant_info/bindings/restaurant_info_binding.dart';
import '../modules/restaurant_info/views/restaurant_info_view.dart';
import '../modules/session_lobby/bindings/session_lobby_binding.dart';
import '../modules/session_lobby/views/session_lobby_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_in_enter_code/bindings/sign_in_enter_code_binding.dart';
import '../modules/sign_in_enter_code/views/sign_in_enter_code_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/terms_conditions/bindings/terms_conditions_binding.dart';
import '../modules/terms_conditions/views/terms_conditions_view.dart';
import '../modules/waiting_person_for_game/bindings/waiting_person_for_game_binding.dart';
import '../modules/waiting_person_for_game/views/waiting_person_for_game_view.dart';
import '../modules/welcome_back/bindings/welcome_back_binding.dart';
import '../modules/welcome_back/views/welcome_back_view.dart';
import '../modules/will_pay/bindings/will_pay_binding.dart';
import '../modules/will_pay/views/will_pay_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FORGOT_ENTER_CODE;

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
      page: () => SessionLobbyView(),
      binding: SessionLobbyBinding(),
    ),
    GetPage(
      name: _Paths.RATING,
      page: () => const RatingView(),
      binding: RatingBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY,
      page: () => const PrivacyPolicyView(),
      binding: PrivacyPolicyBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_CONDITIONS,
      page: () => const TermsConditionsView(),
      binding: TermsConditionsBinding(),
    ),
    GetPage(
      name: _Paths.HELP_SUPPORT,
      page: () => const HelpSupportView(),
      binding: HelpSupportBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT_INFO,
      page: () => const RestaurantInfoView(),
      binding: RestaurantInfoBinding(),
    ),
    GetPage(
      name: _Paths.WAITING_PERSON_FOR_GAME,
      page: () => const WaitingPersonForGameView(),
      binding: WaitingPersonForGameBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_BACK,
      page: () => const WelcomeBackView(),
      binding: WelcomeBackBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PLAYER_BY_QRCODE,
      page: () => const AddPlayerByQrcodeView(),
      binding: AddPlayerByQrcodeBinding(),
    ),
  ];
}
