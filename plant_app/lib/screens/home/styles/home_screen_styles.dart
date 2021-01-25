import 'package:flutter/material.dart';

import 'package:plant_app/utils/consts.dart';

abstract class HomeScreenStyles {
  static EdgeInsets bottomNavigationBarPadding() {
    return EdgeInsets.only(
      right: Consts.defaultPadding * 2,
      left: Consts.defaultPadding * 2,
    );
  }

  static BoxDecoration bottomNavigationBar() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: Consts.primaryColor.withOpacity(.3),
        )
      ],
    );
  }
}
