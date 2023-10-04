import '../controller/lyrics_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LyricsPageScreen.
///
/// This class ensures that the LyricsPageController is created when the
/// LyricsPageScreen is first loaded.
class LyricsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LyricsPageController());
  }
}
