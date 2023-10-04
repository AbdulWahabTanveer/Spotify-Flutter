import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/music_page_screen/models/music_page_model.dart';

/// A controller class for the MusicPageScreen.
///
/// This class manages the state of the MusicPageScreen, including the
/// current musicPageModelObj
class MusicPageController extends GetxController {
  Rx<MusicPageModel> musicPageModelObj = MusicPageModel().obs;
}
