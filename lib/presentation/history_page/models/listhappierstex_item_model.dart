import '../../../core/app_export.dart';

/// This class is used in the [listhappierstex_item_widget] screen.
class ListhappierstexItemModel {
  ListhappierstexItemModel({
    this.happiersText,
    this.playlistText,
    this.id,
  }) {
    happiersText = happiersText ?? Rx("Happiers");
    playlistText = playlistText ?? Rx("Playlist");
    id = id ?? Rx("");
  }

  Rx<String>? happiersText;

  Rx<String>? playlistText;

  Rx<String>? id;
}
