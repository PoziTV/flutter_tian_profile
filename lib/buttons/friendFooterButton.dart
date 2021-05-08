import 'package:flutter/material.dart';
import 'package:tiana_profile/styles/colorPallete.dart';
import 'package:tiana_profile/styles/themeTextStyle.dart';

class FriendFooterButton extends StatelessWidget {
  String title;
  Color titleColor = ColorPalette.Black_0;
  Color buttonColor = ColorPalette.White_0;
  Color buttonBorderColor = ColorPalette.Black_0.withOpacity(0.12);
  double borderWidth = 1;

  FriendFooterButton({this.title = "", }) ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: buttonBorderColor,
              width: borderWidth,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: ThemeTextStyle.Button.copyWith(color: ColorPalette.Black_0.withOpacity(0.87)),
              ),
              Icon(
                Icons.add,
                color: ColorPalette.Black_0.withOpacity(0.87),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
