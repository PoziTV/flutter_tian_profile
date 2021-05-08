import 'package:flutter/material.dart';
import 'package:tiana_profile/styles/colorPallete.dart';
import 'package:tiana_profile/styles/themeTextStyle.dart';

class MediaFooterButton extends StatelessWidget {
  String title;
  Color titleColor = ColorPalette.Black_0;
  Color buttonColor = ColorPalette.White_0;
  Color buttonBorderColor = ColorPalette.Black_0.withOpacity(0.12);
  double borderWidth = 1;
  bool isButtonActive;

  MediaFooterButton({this.title = "", this.isButtonActive = false}) {
    if (this.isButtonActive) {
      this.titleColor = ColorPalette.White_0;
      this.buttonColor = ColorPalette.Violet_500;
      this.buttonBorderColor = ColorPalette.Violet_500;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: buttonBorderColor,
              width: borderWidth,
            ),
            color: buttonColor,
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: ThemeTextStyle.Button.copyWith(color: titleColor),
          ),
        ),
      ),
    );
  }
}
