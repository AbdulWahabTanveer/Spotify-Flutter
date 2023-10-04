import '../homepage_tab_container_page/widgets/listfebyputri_item_widget.dart';
import 'controller/homepage_tab_container_controller.dart';
import 'models/homepage_tab_container_model.dart';
import 'models/listfebyputri_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/homepage_page/homepage_page.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image_1.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image_2.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';

class HomepageTabContainerPage extends StatelessWidget {
  HomepageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  HomepageTabContainerController controller =
      Get.put(HomepageTabContainerController(HomepageTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 56.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgSearch,
            margin: EdgeInsets.only(
              left: 32.h,
              top: 16.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: AppbarImage(
            imagePath: ImageConstant.imgSpotifylogorgbgreen,
          ),
          actions: [
            AppbarImage2(
              svgPath: ImageConstant.imgSettings,
              margin: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 16.v,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              SizedBox(
                height: 152.v,
                width: 364.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 24.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 22.v,
                        ),
                        decoration:
                            AppDecoration.fillSecondaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocation,
                              height: 17.v,
                              width: 8.h,
                              margin: EdgeInsets.only(
                                top: 32.v,
                                bottom: 33.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                bottom: 2.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_popular".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 8.v),
                                  Text(
                                    "lbl_sisa_rasa".tr,
                                    style: CustomTextStyles.headlineSmall_1,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "lbl_mahalini".tr,
                                    style: CustomTextStyles.titleMedium16,
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
                                top: 32.v,
                                right: 1.h,
                                bottom: 33.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMahalinipng1,
                      height: 152.v,
                      width: 144.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 28.h),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 31.h,
                    top: 34.v,
                  ),
                  child: Text(
                    "lbl_today_s_hits".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(
                height: 187.v,
                child: Obx(
                  () => ListView.separated(
                    padding: EdgeInsets.only(
                      left: 31.h,
                      top: 11.v,
                      right: 31.h,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 16.h,
                      );
                    },
                    itemCount: controller.homepageTabContainerModelObj.value
                        .listfebyputriItemList.value.length,
                    itemBuilder: (context, index) {
                      ListfebyputriItemModel model = controller
                          .homepageTabContainerModelObj
                          .value
                          .listfebyputriItemList
                          .value[index];
                      return ListfebyputriItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "msg_arti_untuk_cinta".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "msg_arsy_widianto_tiar".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_runtuh".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "msg_feby_putri_fiersa".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_blue_jeans".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_gangga".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 31.v,
                width: 319.h,
                margin: EdgeInsets.only(
                  left: 31.h,
                  top: 35.v,
                ),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(
                      child: Column(
                        children: [
                          Text(
                            "lbl_artists".tr,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgEllipse16,
                            height: 4.v,
                            width: 16.h,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_album".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_podcast".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 206.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    HomepagePage(),
                    HomepagePage(),
                    HomepagePage(),
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
