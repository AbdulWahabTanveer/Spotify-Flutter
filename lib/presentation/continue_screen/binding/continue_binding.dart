import '../controller/continue_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ContinueScreen.
///
/// This class ensures that the ContinueController is created when the
/// ContinueScreen is first loaded.
class ContinueBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContinueController());
  }
}
