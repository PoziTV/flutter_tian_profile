import 'package:flutter/material.dart';
import '../../styles/colorPallete.dart';
import '../../styles/themeTextStyle.dart';

class SectionAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: Text(
        "Profile",
        style: ThemeTextStyle.Headline_6.copyWith(color: ColorPalette.Black_0),
      ),
      actions: <Widget>[
        Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ],
      shadowColor: Color.fromRGBO(0, 0, 0, 0.039),
    );
  }
}
