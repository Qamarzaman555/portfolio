import 'package:flutter/material.dart';

import 'elevated_btn_theme.dart';
import 'outline_btn_theme.dart';
import 'text_btn_theme.dart';
import 'text_field_theme.dart';
import 'text_theme.dart';

class AppTheme {
  AppTheme._();

  // Customizable light Theme

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedBtnTheme.lightElevatedButtonTheme,
    textButtonTheme: AppTextBtnTheme.lightTextButtonTheme,
    outlinedButtonTheme: AppOutlinedBtnTheme.lightOutlineButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  // Customizable light Theme

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedBtnTheme.darkElevatedButtonTheme,
    textButtonTheme: AppTextBtnTheme.darkTextButtonTheme,
    outlinedButtonTheme: AppOutlinedBtnTheme.darkOutlineButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
