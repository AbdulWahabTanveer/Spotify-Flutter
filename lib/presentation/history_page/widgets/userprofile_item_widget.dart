import '../controller/history_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle434480x80,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            bottom: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofileItemModelObj.userSadness!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  userprofileItemModelObj.userPlaylist!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
