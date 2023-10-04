import 'controller/homepage_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/history_page/history_page.dart';
import 'package:spotify_flutter/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:spotify_flutter/presentation/library_page/library_page.dart';
import 'package:spotify_flutter/presentation/profil_page/profil_page.dart';
import 'package:spotify_flutter/widgets/custom_bottom_app_bar.dart';

class HomepageContainerScreen extends GetWidget<HomepageContainerController> {
  const HomepageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homepageTabContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomAppBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageTabContainerPage;
      case BottomBarEnum.Playlist:
        return AppRoutes.libraryPage;
      case BottomBarEnum.History:
        return AppRoutes.historyPage;
      case BottomBarEnum.Profil:
        return AppRoutes.profilPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageTabContainerPage:
        return HomepageTabContainerPage();
      case AppRoutes.libraryPage:
        return LibraryPage();
      case AppRoutes.historyPage:
        return HistoryPage();
      case AppRoutes.profilPage:
        return ProfilPage();
      default:
        return DefaultWidget();
    }
  }
}
