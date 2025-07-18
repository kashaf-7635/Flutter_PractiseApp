import 'package:flutter/material.dart';

TextStyle mTextStyle14({
  Color textColor = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(fontSize: 14, color: textColor, fontWeight: fontWeight);
}

TextStyle mTextStyle16({Color textColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: textColor);
}

TextStyle mTextStyle21() {
  return TextStyle(fontSize: 21);
}

TextStyle headingTextStyle() {
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.pink.shade700,
    fontFamily: 'FontMain',
  );
}

TextStyle headingTextStyle2() {
  return TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}
