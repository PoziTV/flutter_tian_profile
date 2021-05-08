import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiana_profile/styles/colorPallete.dart';
// import 'themeTextStyle.dart';

class ThemeButtonStyle {
  static var SelectButtonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    primary: Colors.red,
    onSurface: ColorPalette.Violet_200,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
    ),
    side: BorderSide(
      color: ColorPalette.Violet_100,
      width: 6,
    ),
  );

  static const TextStyle Caption2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    fontFamily: ('Roboto'),
    color: ColorPalette.Gray_2,
  );
}
