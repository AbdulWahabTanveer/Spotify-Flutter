import 'controller/music_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_subtitle.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_title.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MusicPageScreen extends GetWidget<MusicPageController> {
  const MusicPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: CustomAppBar(
          leadingWidth: 64.h,
          leading: AppbarIconbutton1(
            svgPath: ImageConstant.imgInfo,
            margin: EdgeInsets.only(
              left: 32.h,
              top: 11.v,
              bottom: 12.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_now_playing".tr,
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 40.h,
                  vertical: 11.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaxresdefault1,
                      height: 400.v,
                      width: 348.h,
                      radius: BorderRadius.circular(
                        32.h,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_sisa_rasa".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                            SizedBox(height: 11.v),
                            Text(
                              "lbl_mahalini".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                        Container(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 15.v),
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
                    SizedBox(height: 40.v),
                  ],
                ),
              ),
              CustomAppBar(
                height: 134.v,
                centerTitle: true,
                title: Column(
                  children: [
                    AppbarImage(
                      svgPath: ImageConstant.imgGroup1000001378,
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        AppbarSubtitle(
                          text: "lbl_2_07".tr,
                        ),
                        AppbarSubtitle(
                          text: "lbl_2_072".tr,
                          margin: EdgeInsets.only(left: 294.h),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.h,
                        top: 34.v,
                        right: 30.h,
                      ),
                      child: Row(
                        children: [
                          AppbarImage(
                            svgPath: ImageConstant.imgVuesaxoutlinerepeateone,
                            margin: EdgeInsets.symmetric(vertical: 20.v),
                          ),
                          AppbarImage(
                            svgPath: ImageConstant.imgRewind,
                            margin: EdgeInsets.only(
                              left: 32.h,
                              top: 20.v,
                              bottom: 20.v,
                            ),
                          ),
                          AppbarIconbutton2(
                            svgPath: ImageConstant.imgVuesaxoutlineplay,
                            margin: EdgeInsets.only(left: 32.h),
                          ),
                          AppbarImage(
                            svgPath: ImageConstant.imgVolume,
                            margin: EdgeInsets.only(
                              left: 32.h,
                              top: 20.v,
                              bottom: 20.v,
                            ),
                          ),
                          AppbarImage(
                            svgPath: ImageConstant.imgVuesaxoutlineshuffle,
                            margin: EdgeInsets.only(
                              left: 32.h,
                              top: 20.v,
                              bottom: 20.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 42.v),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 11.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowup,
                      height: 8.v,
                      width: 17.h,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "lbl_lyrics".tr,
                      style: theme.textTheme.bodyMedium,
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
