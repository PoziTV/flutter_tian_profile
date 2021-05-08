import 'package:flutter/material.dart';
import 'package:tiana_profile/styles/themeTextStyle.dart';
import '../../styles/themeTextStyle.dart';
import '../../styles/colorPallete.dart';

class SectionAva extends StatelessWidget {
  String name;
  String profession;
  ImageProvider<Object>? avaImage;
  SectionAva({this.avaImage, this.name = "", this.profession = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: Stack(
              alignment: const Alignment(1, 1),
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: avaImage,
                  radius: 59,
                ),
                Container(
                  height: 36,
                  width: 36,
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor: ColorPalette.Violet_500,
                    child: Icon(
                      Icons.add,
                      size: 24,
                    ),
                    shape: StadiumBorder(
                        side: BorderSide(color: Colors.white, width: 1.5)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Text(
            name,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: ThemeTextStyle.Subtile_1.copyWith(color: Colors.black),
          ),
          Text(profession,
              textDirection: TextDirection.ltr, // текст слева направо
              textAlign: TextAlign.center, // выравнивание по центру
              style: ThemeTextStyle.Caption.copyWith(color: ColorPalette.Gray_2),
          ),
          Container(
            height: 2,
            color: ColorPalette.SectionDivider,
            margin: EdgeInsets.only(top: 24, left: 16, right: 16),
          ),
        ],
      ),
    );
  }
}
