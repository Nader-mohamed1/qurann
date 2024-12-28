import 'package:flutter/material.dart';
import 'package:qurann/appcolors.dart';

class MyThemeData {
  static final ThemeData lightmode = ThemeData(
      primaryColor: AppColors.primaryLightcolor,
      canvasColor: AppColors.primaryLightcolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.blackcolor,
          unselectedItemColor: AppColors.whitercolor,
          backgroundColor: AppColors.primaryLightcolor),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 25,
            fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 25,
            fontWeight: FontWeight.bold),
        titleLarge: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 25,
            fontWeight: FontWeight.w400),
      ));
  static final ThemeData Darkmode = ThemeData(
      primaryColor: AppColors.primaryLightcolor,
      canvasColor: AppColors.primaryLightcolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.blackcolor,
          unselectedItemColor: AppColors.whitercolor,
          backgroundColor: AppColors.primaryLightcolor),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 25,
            fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 25,
            fontWeight: FontWeight.bold),
        titleLarge: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 25,
            fontWeight: FontWeight.w400),
      ));
}
