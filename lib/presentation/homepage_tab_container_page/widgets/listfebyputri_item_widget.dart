import '../controller/homepage_tab_container_controller.dart';
import '../models/listfebyputri_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListfebyputriItemWidget extends StatelessWidget {
  ListfebyputriItemWidget(
    this.listfebyputriItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListfebyputriItemModel listfebyputriItemModelObj;

  var controller = Get.find<HomepageTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.adaptSize,
      width: 128.adaptSize,
      margin: EdgeInsets.only(bottom: 48.v),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTiaraandini128x128,
            height: 128.adaptSize,
            width: 128.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          CustomIconButton(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              right: 8.h,
              bottom: 8.v,
            ),
            padding: EdgeInsets.all(5.h),
            decoration: IconButtonStyleHelper.fillGray,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgVector,
            ),
          ),
        ],
      ),
    );
  }
}
