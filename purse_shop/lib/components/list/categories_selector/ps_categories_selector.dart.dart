import 'package:flutter/material.dart';

import 'package:purse_shop/components/list/categories_selector/styles.dart';
import 'package:purse_shop/utils/consts.dart';

class PSCategoriesSelector extends StatefulWidget {
  final List<String> items;

  const PSCategoriesSelector(this.items, {Key key}) : super(key: key);

  @override
  _PSCategoriesSelectorState createState() => _PSCategoriesSelectorState();
}

class _PSCategoriesSelectorState extends State<PSCategoriesSelector> {
  int itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: widget.items.length,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => setState(() => itemIndex = index),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Consts.defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.items[index], style: Styles.text(itemIndex, index)),
                Container(
                  margin: EdgeInsets.only(top: Consts.defaultPadding / 4),
                  height: 2,
                  width: 30,
                  color: itemIndex == index ? Colors.black : Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
