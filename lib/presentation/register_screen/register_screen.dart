import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/core/utils/validation_functions.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_iconbutton.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_flutter/widgets/custom_elevated_button.dart';
import 'package:spotify_flutter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 72.h,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgInfo,
            margin: EdgeInsets.only(
              left: 40.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
          centerTitle: true,
          title: AppbarImage(
            imagePath: ImageConstant.imgSpotifylogorgbgreen,
          ),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 26.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_register".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 18.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_if_you_need_any2".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: "lbl_click_here".tr,
                        style: CustomTextStyles.bodySmallGreenA700,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 33.v),
                CustomTextFormField(
                  controller: controller.fullNameController,
                  hintText: "lbl_full_name".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 28.v,
                  ),
                ),
                SizedBox(height: 16.v),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "lbl_enter_email".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 28.v,
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomTextFormField(
                    controller: controller.passwordController,
                    hintText: "lbl_password".tr,
                    textInputType: TextInputType.visiblePassword,
                    suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 23.v, 24.h, 23.v),
                        child: CustomImageView(
                          svgPath: controller.isShowPassword.value
                              ? ImageConstant.imgReply
                              : ImageConstant.imgReply,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 72.v,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    obscureText: controller.isShowPassword.value,
                  ),
                ),
                SizedBox(height: 16.v),
                Obx(
                  () => CustomTextFormField(
                    controller: controller.passwordController1,
                    hintText: "lbl_repeat_password".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword1.value =
                            !controller.isShowPassword1.value;
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 23.v, 24.h, 23.v),
                        child: CustomImageView(
                          svgPath: controller.isShowPassword1.value
                              ? ImageConstant.imgReply
                              : ImageConstant.imgReply,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 72.v,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    obscureText: controller.isShowPassword1.value,
                  ),
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  text: "lbl_register".tr,
                ),
                SizedBox(height: 26.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 7.v,
                        bottom: 6.v,
                      ),
                      child: SizedBox(
                        width: 150.h,
                        child: Divider(),
                      ),
                    ),
                    Text(
                      "lbl_or".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 7.v,
                        bottom: 6.v,
                      ),
                      child: SizedBox(
                        width: 150.h,
                        child: Divider(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26.v),
                CustomImageView(
                  svgPath: ImageConstant.imgGroup1000001177,
                  height: 48.v,
                  width: 348.h,
                ),
                SizedBox(height: 35.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_have_an_account2".tr,
                        style: CustomTextStyles.labelLargeOnPrimaryContainer,
                      ),
                      TextSpan(
                        text: "lbl_log_in".tr,
                        style: CustomTextStyles.labelLargeSecondaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
