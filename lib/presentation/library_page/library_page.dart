import '../library_page/widgets/gridlikedsongst_item_widget.dart';
import 'controller/library_controller.dart';
import 'models/gridlikedsongst_item_model.dart';
import 'models/library_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image_1.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_image_2.dart';
import 'package:spotify_flutter/widgets/app_bar/appbar_title.dart';
import 'package:spotify_flutter/widgets/app_bar/custom_app_bar.dart';

class LibraryPage extends StatelessWidget {
  LibraryPage({Key? key})
      : super(
          key: key,
        );

  LibraryController controller = Get.put(LibraryController(LibraryModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 60.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgSearch,
            margin: EdgeInsets.only(
              left: 40.h,
              top: 17.v,
              bottom: 18.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_playlist".tr,
          ),
          actions: [
            AppbarImage2(
              svgPath: ImageConstant.imgPlus,
              margin: EdgeInsets.fromLTRB(32.h, 11.v, 32.h, 12.v),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 3.v),
              Container(
                height: 16.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.5, -0.86),
                    end: Alignment(0.5, 1),
                    colors: [
                      theme.colorScheme.onPrimary.withOpacity(0.4),
                      appTheme.blueGray10066,
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 40.h,
                    top: 16.v,
                    right: 40.h,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 207.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 48.h,
                        crossAxisSpacing: 48.h,
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.libraryModelObj.value
                          .gridlikedsongstItemList.value.length,
                      itemBuilder: (context, index) {
                        GridlikedsongstItemModel model = controller
                            .libraryModelObj
                            .value
                            .gridlikedsongstItemList
                            .value[index];
                        return GridlikedsongstItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
