import '../controller/profil_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<ProfilController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRan,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofile1ItemModelObj.userName!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    userprofile1ItemModelObj.userBio!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgOverflowmenu,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 24.v),
          ),
        ],
      ),
    );
  }
}
