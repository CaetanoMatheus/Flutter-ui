import 'package:flutter/material.dart';

import 'package:plant_app/utils/consts.dart';

abstract class Styles {
  static EdgeInsets containerMargin() {
    return EdgeInsets.only(
      top: Consts.defaultPadding,
      bottom: Consts.defaultPadding * 2.5,
      left: Consts.defaultPadding,
    );
  }

  static BoxDecoration bottomDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 50,
          color: Consts.primaryColor.withOpacity(.23),
        )
      ],
    );
  }

  static TextStyle bottomText() {
    return TextStyle(
      color: Consts.primaryColor.withOpacity(.5),
    );
  }

  static TextStyle priceText(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .button
        .copyWith(color: Consts.primaryColor);
  }
}
