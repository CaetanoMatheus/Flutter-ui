import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle text(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline5
        .copyWith(fontWeight: FontWeight.bold);
  }
}
