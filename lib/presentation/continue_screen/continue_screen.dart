import 'controller/continue_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_iconbutton.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_flutter/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ContinueScreen extends GetWidget<ContinueController> {
  const ContinueScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 893.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    top: 87.v,
                    bottom: 294.v,
                  ),
                  child: IntrinsicWidth(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 42.h,
                            right: 46.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPinksweats,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPinkfloyd,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRizkyfebian,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                                margin: EdgeInsets.only(right: 42.h),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 88.h,
                              top: 16.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgAdele,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTiaraandini,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgAnneth,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 42.h,
                            top: 16.v,
                            right: 46.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTulus,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgBudidoremi,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFebyputri,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                                margin: EdgeInsets.only(right: 42.h),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 88.h,
                              top: 16.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFiersabesari,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgBeatlesabbeyroad,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGangga,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 42.h,
                            top: 16.v,
                            right: 46.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgQueen,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgIdgitaf,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMahalini,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                                margin: EdgeInsets.only(right: 38.h),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 88.h,
                              top: 16.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgNadinamizah,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTaylorswift,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgNiki,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 32.v),
                      decoration: AppDecoration.gradientBlackToBlack,
                      child: CustomAppBar(
                        height: 40.v,
                        leadingWidth: 72.h,
                        leading: AppbarIconbutton(
                          svgPath: ImageConstant.imgInfo,
                          margin: EdgeInsets.only(
                            left: 40.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                        ),
                        centerTitle: true,
                        title: AppbarImage(
                          imagePath: ImageConstant.imgSpotifylogorgbgreen,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.h,
                        vertical: 87.v,
                      ),
                      decoration: AppDecoration.gradientBlackToBlack90001,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 23.v),
                          Text(
                            "lbl_choose_mode".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          SizedBox(height: 33.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 78.v,
                                      width: 73.h,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgEye,
                                            height: 16.v,
                                            width: 36.h,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgHiconlinear,
                                            height: 36.adaptSize,
                                            width: 36.adaptSize,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 13.v),
                                    Text(
                                      "lbl_dark_mode".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 53.h),
                                child: Column(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgBrightness,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                    ),
                                    SizedBox(height: 21.v),
                                    Text(
                                      "lbl_light_mode".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 65.v),
                          CustomElevatedButton(
                            text: "lbl_continue".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
