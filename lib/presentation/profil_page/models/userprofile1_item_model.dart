import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userName,
    this.userBio,
    this.id,
  }) {
    userName = userName ?? Rx("Dekat Di Hati");
    userBio = userBio ?? Rx("RAN");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? userBio;

  Rx<String>? id;
}
