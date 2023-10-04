import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

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
        child: CustomOutlinedButton(
          height: 24.v,
          width: 64.h,
          text: "lbl_follow".tr,
          buttonStyle: CustomButtonStyles.outlineOnPrimaryContainerTL12,
          buttonTextStyle: theme.textTheme.titleSmall!,
        ),
      ),
    );
  }
}
