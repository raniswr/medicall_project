import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicall_project/core/constant/colors.dart';
import 'package:medicall_project/core/constant/styles.dart';

ThemeData getAppTheme(BuildContext _) {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.bgcolor,
    fontFamily: GoogleFonts.poppins().fontFamily,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.purple,
      ),
    ),
    textTheme: TextTheme(
      bodyText2: AppStyles.styleTextBody14(),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.grayMedium,
      thickness: 1,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(AppColors.purple),
        textStyle: MaterialStateProperty.all(AppStyles.styleTextBody14()),
      ),
    ),
  );
}
