import 'package:flutter/material.dart';

import 'package:plant_app/utils/consts.dart';
import 'package:plant_app/utils/image_resolver.dart';

abstract class BodyStyles {
  static BoxDecoration headerBackground() {
    return BoxDecoration(
      color: Consts.primaryColor,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(36),
        bottomLeft: Radius.circular(36),
      ),
    );
  }

  static BoxDecoration headerSearchInputBackground() {
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

  static InputDecoration headerSearchInput() {
    return InputDecoration(
      hintText: 'Search',
      hintStyle: TextStyle(color: Consts.primaryColor.withOpacity(.5)),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      suffixIcon: ImageResolver.icon('search'),
    );
  }
}
