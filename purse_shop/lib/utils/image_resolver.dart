import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class ImageResolver {

  static SvgPicture icon(name, [color = Colors.white]) {
    return SvgPicture.asset('assets/icons/$name.svg', color: color);
  }
}
