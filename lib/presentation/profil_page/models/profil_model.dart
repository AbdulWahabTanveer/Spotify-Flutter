import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [profil_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfilModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList =
      Rx(List.generate(3, (index) => Userprofile1ItemModel()));
}
