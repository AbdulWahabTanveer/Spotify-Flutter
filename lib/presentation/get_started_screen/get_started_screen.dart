import 'controller/get_started_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/custom_elevated_button.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 893.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(top: 87.v, bottom: 294.v),
                          child: IntrinsicWidth(
                              child: Column(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 42.h, right: 46.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPinksweats,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPinkfloyd,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRizkyfebian,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize,
                                          margin: EdgeInsets.only(right: 42.h))
                                    ])),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 88.h, top: 16.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgAdele,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTiaraandini,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAnneth,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize)
                                        ]))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 42.h, top: 16.v, right: 46.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgTulus,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgBudidoremi,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFebyputri,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize,
                                          margin: EdgeInsets.only(right: 42.h))
                                    ])),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 88.h, top: 16.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFiersabesari,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgBeatlesabbeyroad,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGangga,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize)
                                        ]))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 42.h, top: 16.v, right: 46.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgQueen,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIdgitaf,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMahalini,
                                          height: 72.adaptSize,
                                          width: 72.adaptSize,
                                          margin: EdgeInsets.only(right: 38.h))
                                    ])),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 88.h, top: 16.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgNadinamizah,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTaylorswift,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgNiki,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize)
                                        ])))
                          ])))),
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 147.h, vertical: 32.v),
                            decoration: AppDecoration.gradientBlackToBlack,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSpotifylogorgbgreen,
                                height: 40.v,
                                width: 133.h)),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.h, vertical: 87.v),
                            decoration: AppDecoration.gradientBlackToBlack90001,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 104.v),
                                  Text("msg_music_for_everyone".tr,
                                      style: CustomTextStyles
                                          .headlineSmallGreenA700),
                                  Container(
                                      width: 332.h,
                                      margin: EdgeInsets.only(
                                          left: 8.h, top: 16.v, right: 7.h),
                                      child: Text("msg_music_expresses".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(height: 1.43))),
                                  SizedBox(height: 73.v),
                                  CustomElevatedButton(
                                      text: "lbl_get_started".tr,
                                      onTap: () {
                                        onTapGetstarted();
                                      })
                                ]))
                      ]))
                ]))));
  }

  /// Navigates to the continueScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the continueScreen.
  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.continueScreen,
    );
  }
}
