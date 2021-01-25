import 'package:flutter/material.dart';
import 'package:plant_app/components/card/wide_plant_card/styles.dart';

class WidePlantCard extends StatelessWidget {
  final String image;
  final Function onTap;

  WidePlantCard({Key key, this.image, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * .8,
        height: 185,
        margin: Styles.containerMargin(),
        decoration: Styles.container(image),
      ),
    );
  }
}
