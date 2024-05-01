import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle textWith14with800(Color color) {
    return GoogleFonts.inter(
      color: color,
      fontSize: 14,
      fontWeight:FontWeight.w800
    );
  }
  static TextStyle textWith14with500(Color color) {
    return GoogleFonts.inter(
        color: color,
        fontSize: 14,
        fontWeight:FontWeight.w500
    );
  }

  static TextStyle textWith14with700(Color color) {
    return GoogleFonts.inter(
        color: color,
        fontSize: 14,
        fontWeight:FontWeight.w700
    );
  }
  static TextStyle textWith14with600(Color color) {
    return GoogleFonts.poppins(
        color: color,
        fontSize: 14,
        fontWeight:FontWeight.w600
    );
  }

  static TextStyle textWith14with900(Color color) {
    return GoogleFonts.poppins(
        color: color,
        fontSize: 14,
        fontWeight:FontWeight.w900
    );
  }
  static TextStyle textWith9with600(Color color) {
    return GoogleFonts.poppins(
        color: color,
        fontSize: 9,
        fontWeight:FontWeight.w600
    );
  }
  static TextStyle textWith10with600(Color color) {
    return GoogleFonts.poppins(
        color: color,
        fontSize: 10,
        fontWeight:FontWeight.w600
    );
  }
  static TextStyle textWith16with600(Color color) {
    return GoogleFonts.poppins(
        color: color,
        fontSize: 16,
        fontWeight:FontWeight.w600
    );
  }


}
