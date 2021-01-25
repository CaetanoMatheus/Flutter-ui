import 'package:flutter/material.dart';
import 'package:plant_app/components/card/plant_card/styles.dart';

import 'package:plant_app/utils/consts.dart';
import 'package:plant_app/utils/image_resolver.dart';

class PlantCard extends StatelessWidget {
  final String text;
  final int price;
  final String bottom;
  final String image;
  final Function onTap;

  PlantCard(
    this.text, {
    Key key,
    this.price,
    this.bottom,
    this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: Styles.containerMargin(),
        width: size.width * .4,
        child: Column(
          children: [
            ImageResolver.img(image),
            Container(
              padding: EdgeInsets.all(Consts.defaultPadding / 2),
              decoration: Styles.bottomDecoration(),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$text\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: '$bottom'.toUpperCase(),
                          style: Styles.bottomText(),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text('\$$price', style: Styles.priceText(context))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
