import 'package:flutter/material.dart';
import 'package:tiana_profile/styles/colorPallete.dart';
import 'package:tiana_profile/styles/themeTextStyle.dart';
import 'package:tiana_profile/buttons/selectTypeButton.dart';

class SectionSelectType extends StatelessWidget {
  String title;
  SectionSelectType({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          title,
          style: ThemeTextStyle.Body_1,
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          SelectTypeButton(
            title: "Black",
          ),
          SelectTypeButton(
            title: "Bold",
          ),
          SelectTypeButton(
            title: "Medium",
            enabled: true,
          ),
          SelectTypeButton(
            title: "Regular",
          ),
          SelectTypeButton(
            title: "Light",
          ),
        ]),
      ),
      // Expanded(
      //   child:
      Container(
        height: 2,
        color: ColorPalette.SectionDivider,
        margin: EdgeInsets.only(top: 16, left: 16, right: 16),
      ),
      // ),
    ]);
  }
}
