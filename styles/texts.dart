import 'package:budget_manager/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

/// All texts Styles must be declared here

const TextStyle body = TextStyle(
  fontFamily: "Poppins",
  fontSize: 15,
  color: black,
);

const TextStyle pageTitle = TextStyle(
  fontFamily: "Quicksand",
  fontSize: 17,
  color: black,
  fontWeight: FontWeight.w600,
  letterSpacing: 2,
);

TextStyle appBarButton = TextStyle(
  fontFamily: "Quicksand",
  fontSize: 16,
  color: Colors.grey[700],
  fontWeight: FontWeight.w600,
);

const TextStyle h1 = TextStyle(
  fontFamily: "Quicksand",
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  letterSpacing: 2,
);

const TextStyle h2 = TextStyle(
  fontFamily: "Quicksand",
  fontSize: 18,
  color: black,
  fontWeight: FontWeight.w500,
);

const TextStyle h3 = TextStyle(
  fontFamily: "Quicksand",
  fontSize: 14,
  color: black,
  fontWeight: FontWeight.w500,
);

const TextStyle textButton = TextStyle(
  fontFamily: "Quicksand",
  fontSize: 14,
  color: black,
  letterSpacing: 2,
);

const TextStyle value =
    TextStyle(fontFamily: "Poppins", fontSize: 18, color: black);

TextStyle bottomSheetTitle = GoogleFonts.roboto(
  fontSize: 16,
  color: black,
  fontWeight: FontWeight.w700,
  letterSpacing: 1.5,
);

TextStyle bottomSheetValue = GoogleFonts.roboto(
  fontSize: 16,
  color: black,
  fontWeight: FontWeight.w400,
);
