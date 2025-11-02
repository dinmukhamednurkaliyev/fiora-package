import 'package:fiora/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension FioraWidgetFlexExtension on Widget {
  Widget expanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  Widget flexible({int flex = 1}) {
    return Flexible(flex: flex, child: this);
  }
}

extension FioraWidgetInteractionExtension on Widget {
  Widget onTap(
    VoidCallback onTap, {
    HitTestBehavior behavior = HitTestBehavior.opaque,
  }) {
    return GestureDetector(onTap: onTap, behavior: behavior, child: this);
  }
}

extension FioraWidgetStylingExtension on Widget {
  Widget rounded(double radius) {
    return ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  }

  Widget roundedAll(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: this,
    );
  }
}

extension FioraWidgetBackgroundExtension on Widget {
  Widget backgroundColor(Color color) => DecoratedBox(
    decoration: BoxDecoration(color: color),
    child: this,
  );

  Widget backgroundPrimary(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(color: context.color.primary),
    child: this,
  );
}

extension FioraWidgetVisibilityExtension on Widget {
  Widget visible({bool isVisible = false}) {
    return isVisible ? this : const SizedBox.shrink();
  }
}
