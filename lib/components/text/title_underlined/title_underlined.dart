import 'package:flutter/material.dart';

import 'package:plant_app/components/text/title_underlined/styles.dart';
import 'package:plant_app/utils/consts.dart';

class TitleUnderlined extends StatelessWidget {
  final String title;

  TitleUnderlined(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: Consts.defaultPadding / 4),
            child: Text(title, style: Styles.title()),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.only(right: Consts.defaultPadding / 4),
              height: 7,
              color: Consts.primaryColor.withOpacity(.2),
            ),
          ),
        ],
      ),
    );
  }
}
