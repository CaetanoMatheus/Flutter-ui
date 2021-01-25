import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/utils/consts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Consts.primaryColor,
        scaffoldBackgroundColor: Consts.backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: Consts.textColor),
      ),
      home: HomeScreen(),
    );
  }
}
