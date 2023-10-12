import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xff39A552);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color greyColor = Color(0xff707070);
  static Color blackColor = Color(0xff303030);
  static ThemeData lightTheme = ThemeData(

      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: whiteColor,
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
        titleMedium: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,

        ),
        titleSmall: TextStyle(
          fontSize: 18,fontWeight: FontWeight.bold,

        )
      ));
}
