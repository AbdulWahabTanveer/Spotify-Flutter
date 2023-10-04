import '../controller/library_controller.dart';
import '../models/gridlikedsongst_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

// ignore: must_be_immutable
class GridlikedsongstItemWidget extends StatelessWidget {
  GridlikedsongstItemWidget(
    this.gridlikedsongstItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridlikedsongstItemModel gridlikedsongstItemModelObj;

  var controller = Get.find<LibraryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle4278,
          height: 150.adaptSize,
          width: 150.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        SizedBox(height: 11.v),
        Obx(
          () => Text(
            gridlikedsongstItemModelObj.likedSongsText!.value,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMedium16,
          ),
        ),
        SizedBox(height: 7.v),
        Obx(
          () => Text(
            gridlikedsongstItemModelObj.songText!.value,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
