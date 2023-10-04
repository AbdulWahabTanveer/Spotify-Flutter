import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/artics_page_screen/models/artics_page_model.dart';

/// A controller class for the ArticsPageScreen.
///
/// This class manages the state of the ArticsPageScreen, including the
/// current articsPageModelObj
class ArticsPageController extends GetxController {
  Rx<ArticsPageModel> articsPageModelObj = ArticsPageModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
