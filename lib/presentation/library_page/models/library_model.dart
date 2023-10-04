import '../../../core/app_export.dart';
import 'gridlikedsongst_item_model.dart';

/// This class defines the variables used in the [library_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LibraryModel {
  Rx<List<GridlikedsongstItemModel>> gridlikedsongstItemList =
      Rx(List.generate(6, (index) => GridlikedsongstItemModel()));
}
