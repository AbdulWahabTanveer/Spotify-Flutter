import '../profil_page/widgets/userprofile1_item_widget.dart';
import 'controller/profil_controller.dart';
import 'models/profil_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image_2.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_title.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';

class ProfilPage extends StatelessWidget {
  ProfilPage({Key? key})
      : super(
          key: key,
        );

  ProfilController controller = Get.put(ProfilController(ProfilModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 63.v,
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_profil".tr,
          ),
          actions: [
            AppbarImage2(
              svgPath: ImageConstant.imgVuesaxoutlinemore,
              margin: EdgeInsets.fromLTRB(32.h, 3.v, 32.h, 2.v),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 335.v,
                width: 336.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL64,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.img20180408153109img99131,
                              height: 96.adaptSize,
                              width: 96.adaptSize,
                              radius: BorderRadius.circular(
                                48.h,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_fauzian_ahmad".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                            SizedBox(height: 8.v),
                            Text(
                              "msg_fauzianahmad04_gmail_com".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 33.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "lbl_followers".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 8.v),
                                    Text(
                                      "lbl_129".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "lbl_following".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 7.v),
                                    Text(
                                      "lbl_238".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUnion,
                      height: 184.v,
                      width: 69.h,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 77.h,
                  top: 73.v,
                  right: 99.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "lbl_find_friend".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgUpload,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "lbl_share".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
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
                  top: 27.v,
                ),
                child: Text(
                  "lbl_mostly_played".tr,
                  style: CustomTextStyles.headlineSmallSemiBold,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      top: 14.v,
                      right: 29.h,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: 12.v,
                          );
                        },
                        itemCount: controller.profilModelObj.value
                            .userprofile1ItemList.value.length,
                        itemBuilder: (context, index) {
                          Userprofile1ItemModel model = controller
                              .profilModelObj
                              .value
                              .userprofile1ItemList
                              .value[index];
                          return Userprofile1ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
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
