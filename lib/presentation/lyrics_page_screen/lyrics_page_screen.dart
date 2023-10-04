import 'controller/lyrics_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_title.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_flutter/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class LyricsPageScreen extends GetWidget<LyricsPageController> {
  const LyricsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: SizedBox(
          height: 893.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 664.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaxresdefault2,
                        height: 664.v,
                        width: 428.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 33.v),
                          decoration: AppDecoration.fillBlack900011,
                          child: CustomAppBar(
                            height: 32.v,
                            leadingWidth: 64.h,
                            leading: AppbarIconbutton1(
                              svgPath: ImageConstant.imgInfo,
                              margin: EdgeInsets.only(left: 32.h),
                            ),
                            centerTitle: true,
                            title: AppbarTitle(
                              text: "lbl_sisa_rasa".tr,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 336.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_masih_jelas_teringat2".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: "msg_tak_tersisa_lagi".tr,
                          style: CustomTextStyles.titleMedium16_1,
                        ),
                        TextSpan(
                          text: "msg_mengapa_masih_ada_sisa".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: "\n".tr,
                          style: CustomTextStyles.titleMedium16_1.copyWith(
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: "msg_di_saat_kau_pergi".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer,
                        ),
                        TextSpan(
                          text: "msg_mampukah_ku_bertahan_tanpa".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.h,
                    vertical: 32.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProfile,
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_sisa_rasa".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "lbl_mahalini".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 8.v),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgLocationGreenA700,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: 24.v,
                                  width: 26.h,
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgGroup1000001378,
                        height: 16.v,
                        width: 348.h,
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_2_07".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "lbl_2_072".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.h, 10.v, 30.h, 23.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgVuesaxoutlinerepeateone,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 20.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgRewind,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 20.v),
                            ),
                            CustomIconButton(
                              height: 64.adaptSize,
                              width: 64.adaptSize,
                              padding: EdgeInsets.all(16.h),
                              decoration: IconButtonStyleHelper.fillGreenA,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgVuesaxoutlineplay,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVolume,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 20.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVuesaxoutlineshuffle,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 20.v),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
