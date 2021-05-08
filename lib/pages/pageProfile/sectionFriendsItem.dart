import 'package:flutter/material.dart';
import 'package:tiana_profile/buttons/friendFooterButton.dart';
import '../../user.dart';
import '../../users.dart';
import '../../styles/themeTextStyle.dart';
import '../../styles/colorPallete.dart';

class SectionFriendItem extends StatelessWidget {
  String ava;
  String name;
  String profession;
  double size;
  CircleAvatar? avaImage;

  @override
  Widget build(BuildContext context) {
    avaImage = CircleAvatar(
      backgroundImage: AssetImage(ava),
      radius: 20,
    );
    return ListTile(
      leading: avaImage ?? Image.asset('assets/images/unknown_person.jpg'),
      title: Text(
        name,
        style: ThemeTextStyle.Subtile_1.copyWith(color: ColorPalette.Black_0.withOpacity(0.87)) ,
      ),
      subtitle: Text(
        profession,
        style: ThemeTextStyle.Body_2.copyWith(color: ColorPalette.Black_0.withOpacity(0.6)),
      ),
      trailing: Icon(Icons.close, size: 28, color: ColorPalette.Red_200),
      onTap: () {},
    );
  }

  SectionFriendItem({
    this.ava = "",
    this.name = "",
    this.profession = "",
    this.size = 50,
  });
}