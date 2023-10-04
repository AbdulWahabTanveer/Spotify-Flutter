import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlack900011 => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.6),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200.withOpacity(0.1),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black90001,
            appTheme.black90001.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientBlackToBlack90001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.black90001,
            appTheme.black90001.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimary,
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.black90001,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL64 => BorderRadius.vertical(
        bottom: Radius.circular(64.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder36 => BorderRadius.circular(
        36.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
