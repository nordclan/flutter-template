import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/src/res/theme/text_style.dart';

// Classic theme
final appTheme = ThemeData(
  backgroundColor: AppColors.white,
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(6.0),
      ),
      borderSide: BorderSide(
        color: AppColors.lightGray,
      ),
    ),
    contentPadding: const EdgeInsets.all(16.0),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lightGray,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.baseBlue,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(6.0),
      ),
    ),
    labelStyle: textRegular,
    suffixIconColor: AppColors.black,
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(
      AppColors.baseBlue,
    ),
    fillColor: MaterialStateProperty.all(AppColors.black),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        AppColors.white,
      ),
      minimumSize: MaterialStateProperty.all(
        const Size(double.infinity, 46),
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.disabled)
            ? AppColors.baseGray
            : AppColors.baseBlue,
      ),
      overlayColor: MaterialStateProperty.all(
        AppColors.baseBlue.withOpacity(0.1),
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 16),
      ),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          side: BorderSide(color: AppColors.baseBlue),
        ),
      ),
    ),
  ),
  fontFamily: 'Montserrat',
);

// Dark theme
final appThemeDark = ThemeData(
  backgroundColor: AppColors.black,
);
