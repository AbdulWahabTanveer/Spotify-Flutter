import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_iconbutton.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_flutter/widgets/custom_elevated_button.dart';
import 'package:spotify_flutter/widgets/custom_outlined_button.dart';
import 'package:spotify_flutter/domain/googleauth/google_auth_helper.dart';
import 'package:spotify_flutter/domain/facebookauth/facebook_auth_helper.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

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
                            padding: EdgeInsets.symmetric(vertical: 32.v),
                            decoration: AppDecoration.gradientBlackToBlack,
                            child: CustomAppBar(
                                height: 40.v,
                                leadingWidth: 72.h,
                                leading: AppbarIconbutton(
                                    svgPath: ImageConstant.imgInfo,
                                    margin: EdgeInsets.only(
                                        left: 40.h, top: 4.v, bottom: 4.v)),
                                centerTitle: true,
                                title: AppbarImage(
                                    imagePath:
                                        ImageConstant.imgSpotifylogorgbgreen))),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.h, vertical: 86.v),
                            decoration: AppDecoration.gradientBlackToBlack90001,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 62.v),
                                  CustomElevatedButton(
                                      height: 48.v,
                                      text: "lbl_sign_up_free".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL24,
                                      buttonTextStyle: CustomTextStyles
                                          .titleMediumBlack90001),
                                  SizedBox(height: 12.v),
                                  CustomOutlinedButton(
                                      text: "msg_continue_with_phone".tr),
                                  SizedBox(height: 12.v),
                                  CustomOutlinedButton(
                                      text: "msg_continue_with_google".tr,
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 30.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGoogle,
                                              height: 28.v,
                                              width: 29.h)),
                                      onTap: () {
                                        onTapContinuewith();
                                      }),
                                  SizedBox(height: 12.v),
                                  CustomOutlinedButton(
                                      text: "msg_continue_with_facebook".tr,
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 30.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFacebook,
                                              height: 28.v,
                                              width: 29.h)),
                                      onTap: () {
                                        onTapContinuewith1();
                                      }),
                                  SizedBox(height: 19.v),
                                  Text("lbl_log_in".tr,
                                      style: theme.textTheme.titleLarge)
                                ]))
                      ]))
                ]))));
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapContinuewith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapContinuewith1() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
