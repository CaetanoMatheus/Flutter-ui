import 'package:flutter/material.dart';

import 'package:purse_shop/utils/consts.dart';

abstract class Styles {
  static TextStyle text(int itemIndex, int index) {
    return TextStyle(
      color: itemIndex == index ? Consts.textColor : Consts.textLightColor,
      fontWeight: FontWeight.bold,
    );
  }
}
