import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef ScreenValues = ({Size size, double width, double height});

extension MediaExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ScreenValues get screen {
    final Size size = mediaQuery.size;

    return (size: size, width: size.width, height: size.height);
  }

  EdgeInsets get padding => mediaQuery.padding;

  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  bool get isKeyboardOpen => viewInsets.bottom > 0;
}

extension DeviceExtensions on BuildContext {
  static const double _compactBreakpoint = 600;
  static const double _mediumBreakpoint = 840;

  bool get isMobile => screen.width < _compactBreakpoint;

  bool get isTablet =>
      screen.width >= _compactBreakpoint && screen.width < _mediumBreakpoint;

  bool get isDesktop => screen.width >= _mediumBreakpoint;

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
