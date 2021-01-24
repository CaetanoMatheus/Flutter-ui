import 'package:flutter/material.dart';

import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/utils/image_resolver.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: ImageResolver.icon('menu'),
        onPressed: () {},
      ),
    );
  }
}
