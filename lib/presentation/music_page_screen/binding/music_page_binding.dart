import '../controller/music_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MusicPageScreen.
///
/// This class ensures that the MusicPageController is created when the
/// MusicPageScreen is first loaded.
class MusicPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MusicPageController());
  }
}
