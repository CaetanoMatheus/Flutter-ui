import 'package:flutter/material.dart';
import 'package:purse_shop/components/list/categories_selector/ps_categories_selector.dart.dart';
import 'package:purse_shop/components/text/title/ps_title.dart';

import 'package:purse_shop/screens/home/components/ps_app_bar.dart';
import 'package:purse_shop/utils/consts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'Hand Bag',
    'Small Purses',
    'Old Fashion',
    'New Purses'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PSAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Consts.defaultPadding),
            child: PSTitle('Women'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Consts.defaultPadding),
            child: PSCategoriesSelector(categories),
          ),
        ],
      ),
    );
  }
}
