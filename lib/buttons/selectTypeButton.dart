import 'package:flutter/material.dart';
import 'package:tiana_profile/styles/colorPallete.dart';
import 'package:tiana_profile/styles/themeTextStyle.dart';

class SelectTypeButton extends StatelessWidget {
  String title;
  TextStyle titleStyle = ThemeTextStyle.ButtonSelectTypeText;
  bool enabled ;
  double borderWidth = 1;
  Color borderColor = ColorPalette.ButtonSelectTypeDisabled;
  Color titleColor = ColorPalette.ButtonSelectTypeTextDisabled;
  Color buttonColor = ColorPalette.ButtonSelectTypeDisabled;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
              width: borderWidth,
              color: borderColor,
            )),
        alignment: Alignment.center,
        child: Text(
          title,
          style: titleStyle.copyWith(color: titleColor),
        ),
      ),
    );
  }

  SelectTypeButton({
    this.title = "",
    this.enabled = false,
  }) {
    if (this.enabled) {
      this.titleColor = ColorPalette.Violet_500;
      this.buttonColor = ColorPalette.Violet_50;
      this.borderColor = ColorPalette.Violet_100;
    }
  }
}
