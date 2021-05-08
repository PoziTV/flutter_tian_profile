import 'package:flutter/material.dart';
import '../../styles/colorPallete.dart';

class SectionMediaItem extends StatelessWidget {
  ImageProvider? sectionMediaItemImage ;
  int index;
  SectionMediaItem({ this.index = 0, this.sectionMediaItemImage });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 8,
        right: 8,
      ),
      width: 96.62,
      height: 96.62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: sectionMediaItemImage??AssetImage('assets/images/unknown_person.jpg'),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(alignment: Alignment.topRight, children: <Widget>[
        SizedBox(
          width: 24,
          height: 24,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: ColorPalette.Red_200,
            child: Icon(
              Icons.close,
              size: 16,
            ),
            shape: StadiumBorder(
                side: BorderSide(color: ColorPalette.White_0, width: 1.5)),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
