import '../controller/homepage_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepageContainerScreen.
///
/// This class ensures that the HomepageContainerController is created when the
/// HomepageContainerScreen is first loaded.
class HomepageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageContainerController());
  }
}
