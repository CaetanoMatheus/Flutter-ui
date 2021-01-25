import 'package:flutter/material.dart';
import 'package:plant_app/utils/consts.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function onTap;

  ActionButton(this.text, {Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Consts.primaryColor,
      onPressed: onTap,
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
