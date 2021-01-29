import 'package:flutter/material.dart';
import 'package:purse_shop/utils/consts.dart';
import 'package:purse_shop/utils/image_resolver.dart';

class PSAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: ImageResolver.icon('back', Consts.textColor),
        onPressed: () {}
      ),
      actions: [
        IconButton(
          icon: ImageResolver.icon('search', Consts.textColor),
          onPressed: () {}
        ),
        IconButton(
          icon: ImageResolver.icon('cart', Consts.textColor),
          onPressed: () {}
        ),
        SizedBox(width: Consts.defaultPadding / 2),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}