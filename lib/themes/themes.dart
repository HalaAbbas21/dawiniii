import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themes{
  final lightTheme =
        ThemeData.light().copyWith(
            brightness: Brightness.light,
            primaryColor: AppColors.primary,
          primaryColorLight: AppColors.white,
          scaffoldBackgroundColor: AppColors.white,
          colorScheme: ColorScheme(brightness: Brightness.light,
              primary: AppColors.primary,
              onPrimary: AppColors.primary,
              secondary: AppColors.white,
              onSecondary: AppColors.white,
              error: AppColors.orange, onError: AppColors.orange,
              background:AppColors.white,
              onBackground: AppColors.white,
              surface: AppColors.white,
              onSurface: AppColors.white),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.white,
            titleTextStyle: TextStyle(
              color: AppColors.primary,
            ),
          ),
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: AppColors.primary,
            ),
            bodyMedium: TextStyle(
              color: AppColors.white,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.white,
          ),
          iconTheme: IconThemeData(
            color: AppColors.primary,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: AppColors.primary,
          ),
          dialogTheme: DialogTheme(
            backgroundColor: AppColors.white,
            contentTextStyle: TextStyle(
              color: AppColors.primary,
            )
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: AppColors.white,
          ),
          snackBarTheme: SnackBarThemeData(
            backgroundColor: AppColors.white,
          ),

        );
  final darkTheme=ThemeData.dark().copyWith(
    brightness: Brightness.dark,
      primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.black,
    primaryColorDark: AppColors.black,
    colorScheme: ColorScheme(brightness: Brightness.dark,
        primary: AppColors.primary,
        onPrimary: AppColors.primary,
        secondary: AppColors.black,
        onSecondary: AppColors.black,
        error: AppColors.orange, onError: AppColors.orange,
        background:AppColors.black,
        onBackground: AppColors.black,
        surface: AppColors.black,
        onSurface: AppColors.black),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.black,
      titleTextStyle: TextStyle(
        color: AppColors.primary,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.primary,

      ),
      bodyMedium: TextStyle(
        color: AppColors.black,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.black,
    ),
    iconTheme: IconThemeData(
      color: AppColors.primary,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.black,
        contentTextStyle: TextStyle(
          color: AppColors.primary,
        )
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.black,


    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.white,
    ),
  );
}