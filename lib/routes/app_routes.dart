import 'package:spotify_flutter/presentation/iphone_13_pro_max_one_screen/iphone_13_pro_max_one_screen.dart';
import 'package:spotify_flutter/presentation/iphone_13_pro_max_one_screen/binding/iphone_13_pro_max_one_binding.dart';
import 'package:spotify_flutter/presentation/get_started_screen/get_started_screen.dart';
import 'package:spotify_flutter/presentation/get_started_screen/binding/get_started_binding.dart';
import 'package:spotify_flutter/presentation/continue_screen/continue_screen.dart';
import 'package:spotify_flutter/presentation/continue_screen/binding/continue_binding.dart';
import 'package:spotify_flutter/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:spotify_flutter/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:spotify_flutter/presentation/log_in_screen/log_in_screen.dart';
import 'package:spotify_flutter/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:spotify_flutter/presentation/register_screen/register_screen.dart';
import 'package:spotify_flutter/presentation/register_screen/binding/register_binding.dart';
import 'package:spotify_flutter/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:spotify_flutter/presentation/homepage_container_screen/binding/homepage_container_binding.dart';
import 'package:spotify_flutter/presentation/music_page_screen/music_page_screen.dart';
import 'package:spotify_flutter/presentation/music_page_screen/binding/music_page_binding.dart';
import 'package:spotify_flutter/presentation/lyrics_page_screen/lyrics_page_screen.dart';
import 'package:spotify_flutter/presentation/lyrics_page_screen/binding/lyrics_page_binding.dart';
import 'package:spotify_flutter/presentation/artics_page_screen/artics_page_screen.dart';
import 'package:spotify_flutter/presentation/artics_page_screen/binding/artics_page_binding.dart';
import 'package:spotify_flutter/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:spotify_flutter/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String iphone13ProMaxOneScreen = '/iphone_13_pro_max_one_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String continueScreen = '/continue_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String logInScreen = '/log_in_screen';

  static const String registerScreen = '/register_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageTabContainerPage = '/homepage_tab_container_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String libraryPage = '/library_page';

  static const String historyPage = '/history_page';

  static const String profilPage = '/profil_page';

  static const String musicPageScreen = '/music_page_screen';

  static const String lyricsPageScreen = '/lyrics_page_screen';

  static const String articsPageScreen = '/artics_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone13ProMaxOneScreen,
      page: () => Iphone13ProMaxOneScreen(),
      bindings: [
        Iphone13ProMaxOneBinding(),
      ],
    ),
    GetPage(
      name: getStartedScreen,
      page: () => GetStartedScreen(),
      bindings: [
        GetStartedBinding(),
      ],
    ),
    GetPage(
      name: continueScreen,
      page: () => ContinueScreen(),
      bindings: [
        ContinueBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: homepageContainerScreen,
      page: () => HomepageContainerScreen(),
      bindings: [
        HomepageContainerBinding(),
      ],
    ),
    GetPage(
      name: musicPageScreen,
      page: () => MusicPageScreen(),
      bindings: [
        MusicPageBinding(),
      ],
    ),
    GetPage(
      name: lyricsPageScreen,
      page: () => LyricsPageScreen(),
      bindings: [
        LyricsPageBinding(),
      ],
    ),
    GetPage(
      name: articsPageScreen,
      page: () => ArticsPageScreen(),
      bindings: [
        ArticsPageBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone13ProMaxOneScreen(),
      bindings: [
        Iphone13ProMaxOneBinding(),
      ],
    )
  ];
}
