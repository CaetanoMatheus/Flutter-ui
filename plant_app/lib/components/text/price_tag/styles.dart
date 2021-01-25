import 'package:flutter/material.dart';
import 'package:plant_app/utils/consts.dart';

abstract class Styles {
  static TextStyle text(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline4
        .copyWith(color: Consts.textColor, fontWeight: FontWeight.bold);
  }

  static TextStyle bottom() {
    return TextStyle(
      fontSize: 20,
      color: Consts.primaryColor,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle price(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline5
        .copyWith(color: Consts.primaryColor);
  }
}
