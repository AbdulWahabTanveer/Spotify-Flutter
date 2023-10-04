import '../controller/get_started_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GetStartedScreen.
///
/// This class ensures that the GetStartedController is created when the
/// GetStartedScreen is first loaded.
class GetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedController());
  }
}
