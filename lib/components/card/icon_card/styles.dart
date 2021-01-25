import 'package:flutter/material.dart';

import 'package:plant_app/utils/consts.dart';

abstract class Styles {
  static BoxDecoration container() {
    return BoxDecoration(
      color: Consts.backgroundColor,
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 15),
          blurRadius: 22,
          color: Consts.primaryColor.withOpacity(.22),
        ),
        BoxShadow(
          offset: Offset(-15, -15),
          blurRadius: 10,
          color: Colors.white,
        ),
      ],
    );
  }
}
