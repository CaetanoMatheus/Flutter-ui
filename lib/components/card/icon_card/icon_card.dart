import 'package:flutter/material.dart';

import 'package:plant_app/components/card/icon_card/styles.dart';
import 'package:plant_app/utils/consts.dart';
import 'package:plant_app/utils/image_resolver.dart';

class IconCard extends StatelessWidget {
  final String icon;

  IconCard(this.icon, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 62,
      width: 62,
      margin: EdgeInsets.symmetric(vertical: size.height * .03),
      padding: EdgeInsets.all(Consts.defaultPadding / 2),
      decoration: Styles.container(),
      child: ImageResolver.icon(icon),
    );
  }
}
