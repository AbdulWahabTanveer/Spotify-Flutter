import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/continue_screen/models/continue_model.dart';

/// A controller class for the ContinueScreen.
///
/// This class manages the state of the ContinueScreen, including the
/// current continueModelObj
class ContinueController extends GetxController {
  Rx<ContinueModel> continueModelObj = ContinueModel().obs;
}
