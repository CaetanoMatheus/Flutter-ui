import 'package:flutter/material.dart';

import 'package:purse_shop/components/text/ps_title/styles.dart';

class PSTitle extends StatelessWidget {
  final String text;

  PSTitle(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Styles.text(context));
  }
}
