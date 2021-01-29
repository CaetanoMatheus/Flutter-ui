import 'package:flutter/material.dart';
import 'package:purse_shop/screens/home/home_screen.dart';
import 'package:purse_shop/utils/consts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme
            .of(context)
            .textTheme
            .apply(bodyColor: Consts.textColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
