import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import 'colors.dart';

class UXTheme {
  static final String? fontFamily = GoogleFonts.poppins().fontFamily;
  static const barOverLayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  );

  static ThemeData light() => ThemeData(
        fontFamily: fontFamily,
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: AppConstants.kFontSizeL,
          ),
          backgroundColor: AppColors.neutralN140,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: AppConstants.kFontSizeS,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: AppConstants.kFontSizeS,
          ),
          selectedItemColor: AppColors.orange,
          unselectedItemColor: AppColors.black,
        ),
      );

  static ThemeData dark() => ThemeData.dark();
}
