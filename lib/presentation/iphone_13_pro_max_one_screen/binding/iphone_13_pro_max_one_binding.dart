import '../controller/iphone_13_pro_max_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone13ProMaxOneScreen.
///
/// This class ensures that the Iphone13ProMaxOneController is created when the
/// Iphone13ProMaxOneScreen is first loaded.
class Iphone13ProMaxOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone13ProMaxOneController());
  }
}
