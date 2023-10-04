import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userSadness,
    this.userPlaylist,
    this.id,
  }) {
    userSadness = userSadness ?? Rx("Sadness");
    userPlaylist = userPlaylist ?? Rx("Playlist");
    id = id ?? Rx("");
  }

  Rx<String>? userSadness;

  Rx<String>? userPlaylist;

  Rx<String>? id;
}
