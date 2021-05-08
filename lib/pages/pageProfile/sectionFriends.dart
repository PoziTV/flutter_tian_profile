import 'package:flutter/material.dart';
import 'package:tiana_profile/buttons/friendFooterButton.dart';
import '../../user.dart';
import '../../styles/themeTextStyle.dart';
import '../../styles/colorPallete.dart';
import 'sectionFriendsItem.dart';

class SectionFriends extends StatelessWidget {
  String title;
  List<User> users;
  SectionFriends({this.title = "", this.users = const <User>[]});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //title
          padding: EdgeInsets.only(right: 16, left: 16, top: 16),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: ThemeTextStyle.Body_1.copyWith(color: ColorPalette.TextDark),
          ),
        ), //title
        Container(
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              return Material(
                child: SectionFriendItem(
                  ava: users[index].ava,
                  name: users[index].name,
                  profession: users[index].profession,
                ),
              );
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child:
                  Container(
                    margin: EdgeInsets.only(
                      left: 72,
                    ),
                    // divider
                    height: 1,
                    color: ColorPalette.FriendDivider,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 8,
            right: 8,
            top: 22,
          ),
          child: Row(
            children: [
              FriendFooterButton(
                title: "ADD FRIEND",
              ),
            ],
          ),
        ),
        Container(
          // divider
          height: 2,
          color: ColorPalette.SectionDivider,
          margin: EdgeInsets.only(top: 16, left: 16, right: 16),
        ), //divider
      ],
    );
  }
}
