import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  static TextStyle popins({TextStyle? style}) {
    return GoogleFonts.poppins(
      textStyle: style,
    );
  }
}
