import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/iphone_13_pro_max_one_screen/models/iphone_13_pro_max_one_model.dart';

/// A controller class for the Iphone13ProMaxOneScreen.
///
/// This class manages the state of the Iphone13ProMaxOneScreen, including the
/// current iphone13ProMaxOneModelObj
class Iphone13ProMaxOneController extends GetxController {
  Rx<Iphone13ProMaxOneModel> iphone13ProMaxOneModelObj =
      Iphone13ProMaxOneModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.getStartedScreen,
      );
    });
  }
}
