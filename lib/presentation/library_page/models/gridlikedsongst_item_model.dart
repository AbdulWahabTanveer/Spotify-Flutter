import '../../../core/app_export.dart';

/// This class is used in the [gridlikedsongst_item_widget] screen.
class GridlikedsongstItemModel {
  GridlikedsongstItemModel({
    this.likedSongsText,
    this.songText,
    this.id,
  }) {
    likedSongsText = likedSongsText ?? Rx("Liked Songs");
    songText = songText ?? Rx("128 song");
    id = id ?? Rx("");
  }

  Rx<String>? likedSongsText;

  Rx<String>? songText;

  Rx<String>? id;
}
