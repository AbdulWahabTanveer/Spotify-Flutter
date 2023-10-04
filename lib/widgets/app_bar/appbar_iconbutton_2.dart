import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton2 extends StatelessWidget {
  AppbarIconbutton2({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillGreenA,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
