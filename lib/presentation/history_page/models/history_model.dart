import '../../../core/app_export.dart';
import 'listhappierstex_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [history_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel {
  Rx<List<ListhappierstexItemModel>> listhappierstexItemList =
      Rx(List.generate(3, (index) => ListhappierstexItemModel()));

  Rx<List<UserprofileItemModel>> userprofileItemList =
      Rx(List.generate(3, (index) => UserprofileItemModel()));
}
