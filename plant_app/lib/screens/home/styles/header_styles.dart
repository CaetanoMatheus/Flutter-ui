import 'package:flutter/material.dart';

import 'package:plant_app/utils/consts.dart';

abstract class HeaderStyles {
  static BoxDecoration background() {
    return BoxDecoration(
      color: Consts.primaryColor,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(36),
        bottomLeft: Radius.circular(36),
      ),
    );
  }

  static EdgeInsets titlePadding() {
    return EdgeInsets.symmetric(horizontal: Consts.defaultPadding);
  }

  static TextStyle title(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline5
        .copyWith(color: Colors.white, fontWeight: FontWeight.bold);
  }

  static BoxDecoration searchInputBackground() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          blurRadius: 50,
          color: Consts.primaryColor.withOpacity(.23),
          offset: Offset(0, 10),
        )
      ],
    );
  }

  static EdgeInsets searchInputMargin() {
    return EdgeInsets.symmetric(horizontal: Consts.defaultPadding);
  }

  static EdgeInsets searchInputPadding() {
    return EdgeInsets.symmetric(horizontal: Consts.defaultPadding);
  }

  static InputDecoration searchInput(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Consts.primaryColor.withOpacity(.5)),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
    );
  }
}
