import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xff9775FA);
const Color secondaryColor = Color(0xffF5F6FA);
const Color primaryTextColor = Color(0xff1D1E20);
const Color secondaryTextColor = Color(0xffFFFFFF);
const Color subtitleTextColor = Color(0xff8F959E);

TextStyle primaryTextStyle = GoogleFonts.inter(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.inter(
  color: secondaryTextColor,
);

TextStyle subtitleTextStyle = GoogleFonts.inter(
  color: subtitleTextColor,
);

TextStyle inputTextStyle = GoogleFonts.inter(
    color: primaryTextColor, fontSize: 15, fontWeight: medium);

TextStyle butttonTextStyle = GoogleFonts.inter(
    color: primaryTextColor, fontSize: 17, fontWeight: medium);

TextStyle buttton2TextStyle = GoogleFonts.inter(
    color: subtitleTextColor, fontSize: 17, fontWeight: medium);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
