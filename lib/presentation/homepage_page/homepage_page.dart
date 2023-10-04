import 'controller/homepage_controller.dart';
import 'models/homepage_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
          key: key,
        );

  HomepageController controller =
      Get.put(HomepageController(HomepageModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "lbl_genre".tr,
                            style:
                                CustomTextStyles.titleLargeOnPrimaryContainer,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          height: 16.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.5, -0.86),
                              end: Alignment(0.5, 1),
                              colors: [
                                theme.colorScheme.onPrimary.withOpacity(0.4),
                                appTheme.blueGray10066,
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 32.h,
                            top: 4.v,
                            right: 32.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAdele80x80,
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                radius: BorderRadius.circular(
                                  40.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  top: 18.v,
                                  bottom: 18.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_adele".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 6.v),
                                    Text(
                                      "msg_43_877_516_monthly".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 17.v,
                                width: 8.h,
                                margin: EdgeInsets.only(
                                  top: 40.v,
                                  bottom: 23.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 32.h,
                            top: 12.v,
                            right: 32.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTiara2,
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                radius: BorderRadius.circular(
                                  40.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 18.v,
                                  bottom: 18.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_tiara_andini".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 7.v),
                                    Text(
                                      "msg_38_782_341_monthly".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 17.v,
                                width: 8.h,
                                margin: EdgeInsets.only(
                                  top: 40.v,
                                  bottom: 23.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 32.h,
                            top: 12.v,
                            right: 32.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTulus2,
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                radius: BorderRadius.circular(
                                  40.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 18.v,
                                  bottom: 18.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_tulus".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 6.v),
                                    Text(
                                      "msg_32_908_713_monthly".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 17.v,
                                width: 8.h,
                                margin: EdgeInsets.only(
                                  top: 40.v,
                                  bottom: 23.v,
                                ),
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
      ),
    );
  }
}
