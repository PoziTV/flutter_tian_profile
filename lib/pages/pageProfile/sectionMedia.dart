import 'package:flutter/material.dart';
import '../../styles/themeTextStyle.dart';
import '../../styles/colorPallete.dart';
import 'sectionMediaFooter.dart';
import 'sectionMediaItem.dart';

class SectionMedia extends StatelessWidget {
  String title;
  String mediaPath;
  SectionMedia({this.title = "", this.mediaPath = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Text(
            title,
            style: ThemeTextStyle.Headline_5.copyWith(
                color: ColorPalette.TextDark),
          ),
        ),
        GridView(
          padding: EdgeInsets.symmetric(horizontal: 18),
          physics: NeverScrollableScrollPhysics(),
          children: _buildGridTileList(9, mediaPath),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 17,
            mainAxisSpacing: 17,
            crossAxisCount: 3,
          ),
          shrinkWrap: true,
        ),
        SectionMediaFooter(),
        Container(
          // divider
          height: 4,
          width: 72,
          color: ColorPalette.SectionDivider,
          padding: EdgeInsets.only(top: 8, bottom: 6),
          margin: EdgeInsets.only(
            top: 24,
            bottom: 14,
          ),
        ),
      ],
    );
  }

  List<Container> _buildGridTileList(int count, String mediaPath) =>
      List.generate(
        count,
        (i) => Container(
          child: SectionMediaItem(
            sectionMediaItemImage: AssetImage('${mediaPath}/media-0${i + 1}.jpg'),
            index: i,
          ),
        ),
      );
}
