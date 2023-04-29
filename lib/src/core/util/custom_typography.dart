import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/constants.dart';


class ColorUtil {
  static Color colorFromHex(String hexColor) {
    final _hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$_hexCode', radix: 16));
  }
}
// ignore: avoid_classes_with_only_static_members
class CustomTypography {
  // static final kPrimaryColor = ColorUtil.colorFromHex('563b96');
  static final kPrimaryColor = ColorUtil.colorFromHex('#0068DD');
  static final kDarkPrimaryColor = ColorUtil.colorFromHex('#06102B');
  static final kPrimaryColor10 = kPrimaryColor.withOpacity(.10);
  static final kPrimaryColor50 = kPrimaryColor.withOpacity(.50);

  static const textColor = Color(0xFFccc7c5);
  static const mainColor = Color(0xFFd15009);
  static const iconColor1 = Color(0xFFffd28d);
  static const iconColor2 = Color(0xFFfcab88);
  static const paraColor = Color(0xFF8f837f);
  static const buttonBackgroundColor = Color(0xFFf7f6f4);
  static const signColor = Color(0xFFa9a29f);
  static const titleColor = Color(0xFF5c524f);
  static const mainBlackColor = Color(0xFF332d2b);
  static const yellowColor = Color(0xFFffd379);

  static final kSecondaryColor = ColorUtil.colorFromHex('#FAA037');
  static final kSecondaryColor10 = kSecondaryColor.withOpacity(.10);
  static final kSecondaryColor50 = kSecondaryColor.withOpacity(.50);

  static final kIndicationColor = ColorUtil.colorFromHex('#00A69C');
  static final kIndicationColor10 = kIndicationColor.withOpacity(.10);
  static final kIndicationColor50 = kIndicationColor.withOpacity(.50);

  static final kErrorColor = ColorUtil.colorFromHex('#FA5F3D');
  static final kErrorColor10 = kErrorColor.withOpacity(.10);
  static final kErrorColor50 = kErrorColor.withOpacity(.50);

  static const kGreyColor = Colors.grey;
  static final kLightGreyColor = ColorUtil.colorFromHex('#E5E5E5');
  static final kMidGreyColor = ColorUtil.colorFromHex('#808080');
  static final kDarkGreyColor = ColorUtil.colorFromHex('#494949');

  static const kWhiteColor = Colors.white;
  static const kWhiteColor54 = Colors.white54;

  static const kBlackColor = Colors.black;
  static const kTransparentColor = Colors.transparent;
  static final kBackgroundColor = ColorUtil.colorFromHex('#FFf2f5fb');

  static final kTextFieldBorderColor = Colors.grey.shade400;

  static final _dmSansFont = GoogleFonts.dmSans(fontSize: 14.0.sp);
  static final ThemeData _defaultTheme = ThemeData(
    primaryColor: kPrimaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kSecondaryColor),
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: IconThemeData(size: 24.0.sp),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: _dmSansFont,
      hintStyle: _dmSansFont,
      prefixStyle: _dmSansFont,
      suffixStyle: _dmSansFont,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kTextFieldBorderColor),
        // gapPadding: Sizing.kZeroValue,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: kTextFieldBorderColor),
        // gapPadding: Sizing.kZeroValue,
      ),
    ),
    scaffoldBackgroundColor: kBackgroundColor,
    appBarTheme: AppBarTheme(
      color: kBackgroundColor,
      elevation: Sizing.kZeroValue,
    ),
  );

  static final ThemeData themeDataModifications = _defaultTheme.copyWith(
    textTheme: GoogleFonts.dmSansTextTheme(_defaultTheme.textTheme).copyWith(
      displayLarge: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 33.0.sp,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 30.0.sp,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 27.0.sp,
        // fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 23.0.sp,
        // fontWeight: FontWeight.bold,
      ),
      headlineSmall: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 20.0.sp,
        // fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 16.0.sp,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 14.0.sp,
      ),
      bodyLarge: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.dmSans(
        color: kBlackColor,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: GoogleFonts.dmSans(color: kBlackColor, fontSize: 14.0.sp),
      titleSmall: GoogleFonts.dmSans(color: kGreyColor, fontSize: 14.0.sp),
    ),
  );
}
