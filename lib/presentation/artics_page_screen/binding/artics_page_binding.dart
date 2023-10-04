import '../controller/artics_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArticsPageScreen.
///
/// This class ensures that the ArticsPageController is created when the
/// ArticsPageScreen is first loaded.
class ArticsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArticsPageController());
  }
}
