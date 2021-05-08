import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sectionAppbar.dart';
import 'sectionAva.dart';
import 'sectionSelectType.dart';
import 'sectionFriends.dart';
import 'sectionMedia.dart';
import '../../users.dart';

class PageProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: DefaultTextStyle(
          style: TextStyle(decoration: TextDecoration.none),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                SectionAppBar(),
                SectionAva(
                  avaImage: Image.asset('assets/images/tiana_ava.jpg').image, //ссылка на фото на аву
                  name: "Tiana Rosser",
                  profession: "developer",
                ),
                SectionSelectType(
                  title: "Select type",
                ),
                SectionFriends(
                  title: "Friends",
                  users: users, //users.dart
                ),
                SectionMedia(
                  mediaPath: "assets/images/media", //ссылка на репозиторий с картинками
                  title: "My media",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
