import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavhome,
        activeIcon: ImageConstant.imgNavhome,
        title: "lbl_home".tr,
        type: BottomBarEnum.Home,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavplaylist,
      activeIcon: ImageConstant.imgNavplaylist,
      title: "lbl_playlist".tr,
      type: BottomBarEnum.Playlist,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfile,
      activeIcon: ImageConstant.imgProfile,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavhistory,
      activeIcon: ImageConstant.imgNavhistory,
      title: "lbl_history".tr,
      type: BottomBarEnum.History,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavprofil,
      activeIcon: ImageConstant.imgNavprofil,
      title: "lbl_profil".tr,
      type: BottomBarEnum.Profil,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: theme.colorScheme.onPrimary,
        child: SizedBox(
          height: 32.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgEllipse16,
                              height: 4.v,
                              width: 24.h,
                            ),
                            CustomImageView(
                              svgPath: bottomMenuList[index].isPng == true
                                  ? null
                                  : bottomMenuList[index].activeIcon,
                              imagePath: bottomMenuList[index].isPng == true
                                  ? bottomMenuList[index].activeIcon
                                  : null,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              color: theme.colorScheme.primary,
                              margin: EdgeInsets.only(top: 12.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style:
                                    CustomTextStyles.labelLargePrimary.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: bottomMenuList[index].isPng == true
                                  ? null
                                  : bottomMenuList[index].icon,
                              imagePath: bottomMenuList[index].isPng == true
                                  ? bottomMenuList[index].icon
                                  : null,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: CustomTextStyles
                                    .bodySmallOnPrimaryContainer
                                    .copyWith(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(0.6),
                                ),
                              ),
                            ),
                          ],
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Playlist,
  History,
  Profil,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isPng = false,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isPng;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
