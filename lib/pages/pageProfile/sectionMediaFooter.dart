import 'package:flutter/material.dart';
import 'package:tiana_profile/buttons/mediaFooterButton.dart';


class SectionMediaFooter  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MediaFooterButton(title: 'DELETE', isButtonActive: true,),
          MediaFooterButton(title: 'ADD', ),
        ],
      ),
    );
  }
}