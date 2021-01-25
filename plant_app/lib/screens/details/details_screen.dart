import 'package:flutter/material.dart';
import 'package:plant_app/components/card/icon_card/icon_card.dart';
import 'package:plant_app/components/text/price_tag/price_tag.dart';
import 'package:plant_app/screens/details/styles/details_screen_styles.dart';
import 'package:plant_app/utils/consts.dart';
import 'package:plant_app/utils/image_resolver.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: Consts.defaultPadding * 3),
              child: Container(
                height: size.height * .8,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: DetailsScreenStyles.leftContentPadding(),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                padding:
                                    DetailsScreenStyles.backButtonPadding(),
                                icon: ImageResolver.icon('back_arrow'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                            IconCard('sun'),
                            IconCard('icon_2'),
                            IconCard('icon_3'),
                            IconCard('icon_4'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .8,
                      width: size.width * .75,
                      decoration: DetailsScreenStyles.image(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Consts.defaultPadding),
              child: PriceTag('Angelica', bottom: 'Russia', price: 440),
            ),
            SizedBox(height: Consts.defaultPadding),
            Row(
              children: [
                Container(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )),
                    color: Consts.primaryColor,
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Description', style: TextStyle(fontSize: 18)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
