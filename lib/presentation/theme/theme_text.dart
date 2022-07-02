import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/constants/size_constants.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _poppinThemeText => GoogleFonts.poppinsTextTheme();

  static TextStyle? get _whiteHeadLine6 => _poppinThemeText.headline6
      ?.copyWith(fontSize: Sizes.dimen_20.sp, color: Colors.white);

  static getTextTheme() => TextTheme(headline6: _whiteHeadLine6);
}
