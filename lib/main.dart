import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              ProfileAppBar(),
              ProfileAvaPage(),
              ProfileSelectType(),
              ProfileFriends(),
              ProfileMedia(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
        // size: 16,
      ),
      title: Text(
        "Profile",
        style: TextStyle(
          color: Colors.black, // зеленый цвет текста
          fontSize: 20, // высота шрифта 26
        ),
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

class ProfileAvaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                  backgroundImage: AssetImage('assets/images/tiana_ava.jpg'),
                  radius: 59,
                ),
                Container(
                  height: 36,
                  width: 36,
                  child: FloatingActionButton(
                    backgroundColor: Color(0xff6200EE),
                    child: Icon(
                      Icons.add,
                      size: 12,
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
            "Tiana Rosser",
            textDirection: TextDirection.ltr, // текст слева направо
            textAlign: TextAlign.center, // выравнивание по центру
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          Text(
            "developer",
            textDirection: TextDirection.ltr, // текст слева направо
            textAlign: TextAlign.center, // выравнивание по центру
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          Container(
            height: 2,
            width: 325,
            color: Color.fromRGBO(33, 33, 33, 0.08),
            margin: EdgeInsets.only(top: 24),
          ),
        ],
      ),
    );
  }
}

class ProfileSelectType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          "Select type",
          style: TextStyle(
            color: Colors.black, // зеленый цвет текста
            fontSize: 16, // высота шрифта 26
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.08),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              alignment: Alignment.center,
              child: Text(
                'Black',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.38),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.08),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              alignment: Alignment.center,
              child: Text(
                'Bold',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.38),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0xffF2E7FE),
                borderRadius: BorderRadius.all(Radius.circular(60)),
                border: Border.all(
                  color: Color(0xffDBB2FF),
                  width: 1,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Medium',
                style: TextStyle(
                  color: Color(0xff6200EE),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.08),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              alignment: Alignment.center,
              child: Text(
                'Regular',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.38),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.08),
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              alignment: Alignment.center,
              child: Text(
                'Light',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.38),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ]),
      ),
      Container(
        height: 2,
        width: 325,
        color: Color(0xffE4E4E4).withOpacity(0.60),
        margin: EdgeInsets.only(
          top: 16,
          // bottom: 16
        ),
      ),
    ]);
  }
}

class ProfileFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          alignment: Alignment.centerLeft,
          child: Text(
            "Friends",
            style: TextStyle(
              color: Colors.black, // зеленый цвет текста
              fontSize: 16, // высота шрифта 26
            ),
          ),
        ),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return Material(
              child: ProfileFriendItem(
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
              Container(
                // divider
                height: 1,
                width: 288,
                color: Color.fromRGBO(33, 33, 33, 0.08),
                // margin: EdgeInsets.only(top: 16),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            right: 8,
            left: 8,
            // top: 22
          ),
          child: TextButton(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: 328,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                border: Border.all(
                  color: Colors.black12.withOpacity(0.12),
                  width: 1,
                ),

                // color: Color(0xff6200EE),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "ADD FRIEND",
                    style: TextStyle(
                      color: Colors.black, // зеленый цвет текста
                      fontSize: 14, // высота шрифта 26
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          // divider
          height: 2,
          width: 325,
          color: Color(0xffE4E4E4).withOpacity(0.6),
          margin: EdgeInsets.only(top: 16),
        ),
      ],
    );
  }
}

class ProfileFriendItem extends StatelessWidget {
  String ava;
  String name;
  String profession;
  double size;
  CircleAvatar? avaImage;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    avaImage = CircleAvatar(
      backgroundImage: AssetImage(ava),
      radius: 20,
    );
    return ListTile(
      leading: avaImage ?? Image.asset('assets/images/unknown_person.jpg'),
      title: Text(name),
      subtitle: Text(profession),
      trailing: Icon(Icons.close, size: 14, color: Color(0xffCF6679)),
      onTap: () {},
    );
  }

  ProfileFriendItem({
    this.ava = "",
    this.name = "",
    this.profession = "",
    this.size = 50,
  });
}

class ProfileMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Text(
            "My media",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              // letterSpacing: 0.18,
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        GridView(
          padding: EdgeInsets.symmetric(horizontal: 18),
          physics: NeverScrollableScrollPhysics(),
          children: _buildGridTileList(9),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 17,
            mainAxisSpacing: 17,
            crossAxisCount: 3,
          ),
          shrinkWrap: true,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: 156,
                  decoration: BoxDecoration(
                    color: Color(0xff6200EE),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'DELETE',
                    style: TextStyle(
                      color: Colors.white, // зеленый цвет текста
                      fontSize: 14, // высота шрифта 26
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.12),
                      width: 1,
                    ),
                  ),
                  alignment: Alignment.center,
                  width: 156,
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.black, // зеленый цвет текста
                      fontSize: 14, // высота шрифта 26
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          // divider
          height: 4,
          width: 72,
          color: Color(0xffE4E4E4).withOpacity(0.6),
          padding: EdgeInsets.only(top: 8, bottom: 6),
          margin: EdgeInsets.only(top: 16, bottom: 8),
        ),
      ],
    );
  }

  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
          padding: EdgeInsets.only(
            top: 8,
            right: 8,
          ),
          width: 96.62,
          height: 96.62,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/media/media-0${i + 1}.jpg'),
            ),
          ),
          clipBehavior: Clip.hardEdge,
          child: Stack(alignment: Alignment.topRight, children: <Widget>[
            SizedBox(
              width: 24,
              height: 24,
              child: FloatingActionButton(
                backgroundColor: Colors.red[200],
                child: Icon(
                  Icons.close,
                  size: 8,
                ),
                shape: StadiumBorder(
                    side: BorderSide(color: Colors.white, width: 1.5)),
                onPressed: () {},
              ),
            ),
          ]),
        ),
      );
}

class User {
  int id;
  String ava;
  String name;
  String profession;
  User({
    required this.id,
    this.ava = "",
    this.name = "",
    this.profession = "",
  });
}

List<User> users = <User>[
  User(
      id: 0,
      ava: "assets/images/friends-ava/id-0.jpg",
      name: "Corey George",
      profession: "Developer"),
  User(
      id: 1,
      ava: "assets/images/friends-ava/id-1.jpg",
      name: "Ahmad Vetrovs",
      profession: "Developer"),
  User(
      id: 2,
      ava: "assets/images/friends-ava/id-2.jpg",
      name: "Cristofer Workman",
      profession: "Developer"),
  User(
      id: 3,
      ava: "assets/images/friends-ava/id-3.jpg",
      name: "Tiana Korsgaard",
      profession: "Developer"),
];
