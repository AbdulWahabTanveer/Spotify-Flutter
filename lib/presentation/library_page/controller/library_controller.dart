import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/presentation/library_page/models/library_model.dart';

/// A controller class for the LibraryPage.
///
/// This class manages the state of the LibraryPage, including the
/// current libraryModelObj
class LibraryController extends GetxController {
  LibraryController(this.libraryModelObj);

  Rx<LibraryModel> libraryModelObj;
}
