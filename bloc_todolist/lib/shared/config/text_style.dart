import 'config.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static final textFontApp = GoogleFonts.robotoTextTheme();

  static TextStyle regular({Color? color, double fontSize = FontSize.medium}) => TextStyle(
        color: color,
        fontSize: fontSize,
      );
  static TextStyle medium({Color? color, double fontSize = FontSize.medium}) => TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle bold({Color? color, double fontSize = FontSize.medium}) => TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      );
}
