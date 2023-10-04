import '../history_page/widgets/listhappierstex_item_widget.dart';
import '../history_page/widgets/userprofile_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/history_model.dart';
import 'models/listhappierstex_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image_2.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_title.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({Key? key})
      : super(
          key: key,
        );

  HistoryController controller = Get.put(HistoryController(HistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_history".tr,
          ),
          actions: [
            AppbarImage2(
              svgPath: ImageConstant.imgVuesaxoutlinemore,
              margin: EdgeInsets.fromLTRB(32.h, 14.v, 32.h, 17.v),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              SizedBox(height: 19.v),
              SizedBox(
                height: 644.v,
                width: 367.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: 17.v,
                      width: 8.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 3.h,
                        bottom: 285.v,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgOverflowmenu,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 284.v),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgOverflowmenu,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 212.v),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_today".tr,
                              style: CustomTextStyles.headlineSmallSemiBold,
                            ),
                            SizedBox(height: 14.v),
                            Expanded(
                              child: Obx(
                                () => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: 8.v,
                                    );
                                  },
                                  itemCount: controller.historyModelObj.value
                                      .listhappierstexItemList.value.length,
                                  itemBuilder: (context, index) {
                                    ListhappierstexItemModel model = controller
                                        .historyModelObj
                                        .value
                                        .listhappierstexItemList
                                        .value[index];
                                    return ListhappierstexItemWidget(
                                      model,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 18.v,
                              ),
                              child: Text(
                                "msg_see_all_28_played".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 35.v),
                            Text(
                              "lbl_yesterday".tr,
                              style: CustomTextStyles.headlineSmallSemiBold,
                            ),
                            SizedBox(height: 14.v),
                            Obx(
                              () => ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: 8.v,
                                  );
                                },
                                itemCount: controller.historyModelObj.value
                                    .userprofileItemList.value.length,
                                itemBuilder: (context, index) {
                                  UserprofileItemModel model = controller
                                      .historyModelObj
                                      .value
                                      .userprofileItemList
                                      .value[index];
                                  return UserprofileItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 17.v,
                                  right: 3.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text(
                                        "msg_see_all_28_played".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgArrowright,
                                      height: 17.v,
                                      width: 8.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
            ],
          ),
        ),
      ),
    );
  }
}
