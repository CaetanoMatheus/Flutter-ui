import 'package:flutter/material.dart';

import 'package:plant_app/utils/consts.dart';
import 'package:plant_app/utils/image_resolver.dart';

abstract class DetailsScreenStyles {
  static EdgeInsets leftContentPadding() {
    return EdgeInsets.symmetric(vertical: Consts.defaultPadding * 3);
  }

  static EdgeInsets backButtonPadding() {
    return EdgeInsets.symmetric(horizontal: Consts.defaultPadding);
  }

  static BoxDecoration image() {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(63),
        bottomLeft: Radius.circular(63),
      ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 60,
          color: Consts.primaryColor.withOpacity(.3),
        )
      ],
      image: DecorationImage(
        alignment: Alignment.centerLeft,
        fit: BoxFit.cover,
        image: ImageResolver.decorationImg('img'),
      ),
    );
  }
}
