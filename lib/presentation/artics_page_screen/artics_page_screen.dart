import 'controller/artics_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/history_page/history_page.dart';
import 'package:spotify_flutter/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:spotify_flutter/presentation/library_page/library_page.dart';
import 'package:spotify_flutter/presentation/profil_page/profil_page.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_button.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image_2.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_flutter/widgets/custom_bottom_app_bar.dart';
import 'package:spotify_flutter/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class ArticsPageScreen extends GetWidget<ArticsPageController> {
  const ArticsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Container(
                decoration: AppDecoration.gradientOnPrimaryToOnPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 280.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTulus2280x428,
                            height: 280.v,
                            width: 428.h,
                            radius: BorderRadius.vertical(
                              bottom: Radius.circular(64.h),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 32.h,
                                top: 24.v,
                                right: 32.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                    height: 32.v,
                                    leadingWidth: 64.h,
                                    leading: AppbarIconbutton1(
                                      svgPath: ImageConstant.imgInfo,
                                      margin: EdgeInsets.only(left: 32.h),
                                    ),
                                    actions: [
                                      AppbarButton(
                                        margin: EdgeInsets.only(
                                          left: 32.h,
                                          top: 4.v,
                                          right: 4.h,
                                        ),
                                      ),
                                      AppbarImage2(
                                        svgPath:
                                            ImageConstant.imgVuesaxoutlinemore,
                                        margin: EdgeInsets.only(
                                          left: 12.h,
                                          top: 4.v,
                                          right: 36.h,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 161.v),
                                  Text(
                                    "lbl_tulus".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(92.h, 17.v, 68.h, 17.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "lbl_followers".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              SizedBox(height: 9.v),
                              Text(
                                "lbl_12_7k".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "msg_monthly_listerners".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                "lbl_4_88m".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 31.h,
                      top: 17.v,
                    ),
                    child: Text(
                      "lbl_albums".tr,
                      style: CustomTextStyles.headlineSmallSemiBold,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: 32.h,
                        top: 12.v,
                      ),
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 272.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgTulus128x128,
                                        height: 128.adaptSize,
                                        width: 128.adaptSize,
                                        radius: BorderRadius.circular(
                                          12.h,
                                        ),
                                      ),
                                      SizedBox(height: 8.v),
                                      Text(
                                        "lbl_manusia".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      SizedBox(height: 2.v),
                                      Text(
                                        "lbl_2022".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgMonokrom,
                                          height: 128.adaptSize,
                                          width: 128.adaptSize,
                                          radius: BorderRadius.circular(
                                            12.h,
                                          ),
                                        ),
                                        SizedBox(height: 8.v),
                                        Text(
                                          "lbl_monokrom".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "lbl_2016".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGajahh,
                                    height: 128.adaptSize,
                                    width: 128.adaptSize,
                                    radius: BorderRadius.circular(
                                      12.h,
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  Text(
                                    "lbl_gajah".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_2014".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      top: 28.v,
                    ),
                    child: Text(
                      "lbl_songs".tr,
                      style: CustomTextStyles.headlineSmallSemiBold,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        top: 10.v,
                        right: 32.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTulus64x64,
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          Expanded(
                            child: Obx(
                              () => CustomRadioButton(
                                width: 284.h,
                                text: "msg_hati_hati_di_jalan".tr,
                                value: "msg_hati_hati_di_jalan".tr,
                                groupValue: controller.radioGroup.value,
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  top: 22.v,
                                  bottom: 23.v,
                                ),
                                isRightCheck: true,
                                onChange: (value) {
                                  controller.radioGroup.value = value;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        top: 8.v,
                        right: 32.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTulus64x64,
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          Expanded(
                            child: Obx(
                              () => CustomRadioButton(
                                width: 284.h,
                                text: "lbl_diri".tr,
                                value: "lbl_diri".tr,
                                groupValue: controller.radioGroup1.value,
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  top: 22.v,
                                  bottom: 23.v,
                                ),
                                isRightCheck: true,
                                onChange: (value) {
                                  controller.radioGroup1.value = value;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
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
