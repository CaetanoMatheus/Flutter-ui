import 'package:flutter/material.dart';

import 'package:plant_app/screens/home/styles/header_styles.dart';
import 'package:plant_app/utils/consts.dart';
import 'package:plant_app/utils/image_resolver.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .2,
      margin: EdgeInsets.only(bottom: Consts.defaultPadding * 2.5),
      child: Stack(
        children: [
          Container(
            height: size.height * .2 - 27,
            decoration: HeaderStyles.background(),
          ),
          Padding(
            padding: HeaderStyles.titlePadding(),
            child: Row(
              children: [
                Text('Hi, Matheus Caetano', style: HeaderStyles.title(context)),
                Spacer(),
                ImageResolver.img('logo'),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            left: 0,
            child: Container(
              height: 54,
              margin: HeaderStyles.searchInputMargin(),
              padding: HeaderStyles.searchInputPadding(),
              decoration: HeaderStyles.searchInputBackground(),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: HeaderStyles.searchInput('Search'),
                    ),
                  ),
                  ImageResolver.icon('search')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
