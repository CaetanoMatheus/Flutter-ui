import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class ImageResolver {
  static SvgPicture icon(String iconName) {
    return SvgPicture.asset('assets/icons/$iconName.svg');
  }

  static Image img(String imageName) {
    return Image.asset('assets/images/$imageName.png');
  }

  static AssetImage decorationImg(String imageName) {
    return AssetImage('assets/images/$imageName.png');
  }
}
