import 'package:flutter/material.dart';

import 'package:plant_app/components/card/plant_card/plant_card.dart';
import 'package:plant_app/components/card/title_with_action_button/title_with_action_button.dart';
import 'package:plant_app/components/card/wide_plant_card/wide_plant_card.dart';
import 'package:plant_app/screens/home/styles/main_styles.dart';
import 'package:plant_app/utils/consts.dart';

class Main extends StatelessWidget {
  final List<Map> recommended = [
    {'name': 'Samantha', 'country': 'Russia', 'price': 440, 'image': 'image_1'},
    {'name': 'Angélica', 'country': 'Brazil', 'price': 670, 'image': 'image_2'},
    {'name': 'Prima', 'country': 'Italy', 'price': 350, 'image': 'image_3'},
  ];

  final List<String> featured = ['bottom_img_1', 'bottom_img_2'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: MainStyles.titleWithActionButtonPadding(),
          child: TitleWithActionButton(
            'Recomended',
            buttonText: 'More',
            onTap: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: recommended
                .map(
                  (plant) => PlantCard(
                    plant['name'],
                    bottom: plant['country'],
                    price: plant['price'],
                    image: plant['image'],
                  ),
                )
                .toList(),
          ),
        ),
        Padding(
          padding: MainStyles.titleWithActionButtonPadding(),
          child: TitleWithActionButton(
            'Featured Plants',
            buttonText: 'More',
            onTap: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: featured
                .map((image) => WidePlantCard(image: image, onTap: () {}))
                .toList(),
          ),
        ),
        SizedBox(height: Consts.defaultPadding)
      ],
    );
  }
}
