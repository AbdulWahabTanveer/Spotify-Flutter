import '../../../core/app_export.dart';

/// This class is used in the [listfebyputri_item_widget] screen.
class ListfebyputriItemModel {
  ListfebyputriItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
