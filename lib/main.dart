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
      leading: Icon(Icons.arrow_back),
      title: Text(
        "Profile",
      ),
      actions: <Widget>[Icon(Icons.more_vert)],
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
          Stack(
            alignment: const Alignment(1, 1),
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/tiana_ava.jpg'),
                radius: 59,
              ),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "Tiana Rosser",
            textDirection: TextDirection.ltr, // текст слева направо
            textAlign: TextAlign.center, // выравнивание по центру
            // font:
            style: TextStyle(
              color: Colors.black, // зеленый цвет текста
              fontSize: 16, // высота шрифта 26
            ),
          ),
          Text(
            "developer",
            textDirection: TextDirection.ltr, // текст слева направо
            textAlign: TextAlign.center, // выравнивание по центру
            style: TextStyle(
              color: Colors.black, // зеленый цвет текста
              fontSize: 12, // высота шрифта 26
            ),
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
            child: Text(
              "Black",
              style: TextStyle(
                color: Colors.black, // зеленый цвет текста
                fontSize: 14, // высота шрифта 26
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              "Bold",
              style: TextStyle(
                color: Colors.black, // зеленый цвет текста
                fontSize: 14, // высота шрифта 26
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              "Medium",
              style: TextStyle(
                color: Colors.black, // зеленый цвет текста
                fontSize: 14, // высота шрифта 26
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              "Regular",
              style: TextStyle(
                color: Colors.black, // зеленый цвет текста
                fontSize: 14, // высота шрифта 26
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              "Light",
              style: TextStyle(
                color: Colors.black, // зеленый цвет текста
                fontSize: 14, // высота шрифта 26
              ),
            ),
            onPressed: () {},
          ),
        ]),
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
          alignment: Alignment.centerLeft,
          child: Text(
            "Friends",
            style: TextStyle(
              color: Colors.black, // зеленый цвет текста
              fontSize: 16, // высота шрифта 26
            ),
          ),
        ),
        ListView.builder(
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
        ),
        TextButton(
          child: Row(
            children: <Widget>[
              Text(
                "ADD FRIEND",
                style: TextStyle(
                  color: Colors.black, // зеленый цвет текста
                  fontSize: 14, // высота шрифта 26
                ),
              ),
              Icon(Icons.add),
            ],
          ),
          onPressed: () {},
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
  Image? avaImage;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    avaImage = Image.asset(ava);
    return
        //   Column(children: <Widget>[
        //   Container(
        //     child: ava,
        //     width: size,
        //     height: size,
        //   ),
        //   Text(name),
        //   Text(profession),
        // ]);
        ListTile(
      leading: avaImage ?? Image.asset('assets/images/unknown_person.jpg'),
      title: Text(name),
      subtitle: Text(profession),
      trailing: Icon(Icons.close),
      onTap: () {},
    );
  }

  ProfileFriendItem({
    this.ava = "",
    this.name = "",
    this.profession = "",
    this.size = 50,
  });
  // {
  //   this.ava = ava ?? Image.asset('assets/images/unknown_person.jpg');
  // }
}

class ProfileMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "My media",
            style: TextStyle(
              color: Colors.black, // зеленый цвет текста
              fontSize: 24, // высота шрифта 26
            ),
          ),
        ),
        GridView(
          physics: NeverScrollableScrollPhysics(),
          children: _buildGridTileList(9),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          shrinkWrap: true,
        ),
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                'DELETE',
                style: TextStyle(
                  color: Colors.black, // зеленый цвет текста
                  fontSize: 14, // высота шрифта 26
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.black, // зеленый цвет текста
                  fontSize: 14, // высота шрифта 26
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
          width: 96.62,
          height: 96.62,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/media/media-0${i + 1}.jpg'),
            ),
          ),
          child: Stack(children: <Widget>[
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
