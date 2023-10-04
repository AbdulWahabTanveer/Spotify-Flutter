import '../../../core/app_export.dart';
import 'listfebyputri_item_model.dart';

/// This class defines the variables used in the [homepage_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTabContainerModel {
  Rx<List<ListfebyputriItemModel>> listfebyputriItemList =
      Rx(List.generate(4, (index) => ListfebyputriItemModel()));
}
