import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/lyrics_page_screen/models/lyrics_page_model.dart';

/// A controller class for the LyricsPageScreen.
///
/// This class manages the state of the LyricsPageScreen, including the
/// current lyricsPageModelObj
class LyricsPageController extends GetxController {
  Rx<LyricsPageModel> lyricsPageModelObj = LyricsPageModel().obs;
}
