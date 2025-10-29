import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension MediaExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get screenSize => mediaQuery.size;
  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;

  EdgeInsets get padding => mediaQuery.padding;

  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  bool get isKeyboardOpen => viewInsets.bottom > 0;
}

extension DeviceExtensions on BuildContext {
  static const double _compactBreakpoint = 600;
  static const double _mediumBreakpoint = 840;

  bool get isMobile => screenWidth < _compactBreakpoint;

  bool get isTablet =>
      screenWidth >= _compactBreakpoint && screenWidth < _mediumBreakpoint;

  bool get isDesktop => screenWidth >= _mediumBreakpoint;

  DeviceCategory get deviceCategory {
    if (isMobile) {
      return DeviceCategory.mobile;
    } else if (isTablet) {
      return DeviceCategory.tablet;
    } else {
      return DeviceCategory.desktop;
    }
  }
}

enum DeviceCategory { mobile, tablet, desktop }
