import '../controller/history_controller.dart';
import '../models/listhappierstex_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

// ignore: must_be_immutable
class ListhappierstexItemWidget extends StatelessWidget {
  ListhappierstexItemWidget(
    this.listhappierstexItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListhappierstexItemModel listhappierstexItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle4344,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 17.v,
            bottom: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listhappierstexItemModelObj.happiersText!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 5.v),
              Obx(
                () => Text(
                  listhappierstexItemModelObj.playlistText!.value,
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
