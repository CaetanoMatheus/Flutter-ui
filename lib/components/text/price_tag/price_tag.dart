import 'package:flutter/material.dart';
import 'package:plant_app/components/text/price_tag/styles.dart';
import 'package:plant_app/utils/consts.dart';

class PriceTag extends StatelessWidget {
  final String text;
  final int price;
  final String bottom;

  PriceTag(
    this.text, {
    Key key,
    this.price,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$text\n',
                style: Styles.text(context),
              ),
              TextSpan(
                text: '$bottom',
                style: Styles.bottom(),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          '\$$price',
          style: Styles.price(context),
        )
      ],
    );
  }
}
