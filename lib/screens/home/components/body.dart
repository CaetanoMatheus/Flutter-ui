import 'package:flutter/material.dart';

import 'package:plant_app/screens/home/styles/body_styles.dart';
import 'package:plant_app/utils/consts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * .2,
          child: Stack(
            children: [
              Container(
                height: size.height * .2 - 27,
                decoration: BodyStyles.headerBackground(),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                left: 0,
                child: Container(
                  height: 54,
                  margin: EdgeInsets.symmetric(
                    horizontal: Consts.defaultPadding,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Consts.defaultPadding,
                  ),
                  decoration: BodyStyles.headerSearchInputBackground(),
                  child: TextField(
                    decoration: BodyStyles.headerSearchInput(), //5:40
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
