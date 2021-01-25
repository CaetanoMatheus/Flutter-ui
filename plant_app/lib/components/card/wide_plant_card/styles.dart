import 'package:flutter/material.dart';
import 'package:plant_app/utils/consts.dart';
import 'package:plant_app/utils/image_resolver.dart';

abstract class Styles {
  static EdgeInsets containerMargin() {
    return EdgeInsets.only(
      top: Consts.defaultPadding / 2,
      bottom: Consts.defaultPadding / 2,
      left: Consts.defaultPadding,
    );
  }

  static BoxDecoration container(String image) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: ImageResolver.decorationImg(image),
      ),
    );
  }
}
