import 'controller/iphone_13_pro_max_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

class Iphone13ProMaxOneScreen extends GetWidget<Iphone13ProMaxOneController> {
  const Iphone13ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgSpotifylogorgbgreen,
                          height: 80.v,
                          width: 266.h)
                    ]))));
  }
}
