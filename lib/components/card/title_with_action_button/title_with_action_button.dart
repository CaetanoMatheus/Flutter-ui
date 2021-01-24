import 'package:flutter/material.dart';

import 'package:plant_app/components/button/action_button.dart';
import 'package:plant_app/components/text/title_underlined/title_underlined.dart';

class TitleWithActionButton extends StatelessWidget {
  final String text;
  final String buttonText;
  final Function onTap;

  TitleWithActionButton(
    this.text, {
    Key key,
    this.buttonText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleUnderlined(text),
        Spacer(),
        ActionButton(buttonText, onTap: onTap)
      ],
    );
  }
}
