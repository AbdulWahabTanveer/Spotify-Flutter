import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/profil_page/models/profil_model.dart';

/// A controller class for the ProfilPage.
///
/// This class manages the state of the ProfilPage, including the
/// current profilModelObj
class ProfilController extends GetxController {
  ProfilController(this.profilModelObj);

  Rx<ProfilModel> profilModelObj;
}
