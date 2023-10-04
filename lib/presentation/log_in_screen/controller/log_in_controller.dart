import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
