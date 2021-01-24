import 'package:flutter_svg/flutter_svg.dart';

abstract class ImageResolver {
  static SvgPicture icon(String iconName) {
    return SvgPicture.asset('assets/icons/$iconName.svg');
  }
}
