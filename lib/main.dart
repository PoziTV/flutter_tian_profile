import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: Icon(Icons.add),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
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
      decoration: BoxDecoration(
        color: Colors.white,
        // border: BoxBorder(),
      ),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: const Alignment(1, 1),
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/tiana_ava.jpg'),
                // AssetImage('images/pic.jpg'),
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
            style: TextStyle(
                color: Colors.green, // зеленый цвет текста
                fontSize: 14, // высота шрифта 26
                backgroundColor: Colors.black87 // черный цвет фона текста
                ),
          ),
          Text(
            "developer",
            textDirection: TextDirection.ltr, // текст слева направо
            textAlign: TextAlign.center, // выравнивание по центру
            style: TextStyle(
                color: Colors.green, // зеленый цвет текста
                fontSize: 14, // высота шрифта 26
                backgroundColor: Colors.black87 // черный цвет фона текста
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
      Text("Select type"),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          TextButton(
            child: Text("Black"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Bold"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Medium"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Regular"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Light"),
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
        Text("Friends"),
        ListView.builder(
          // padding: const EdgeInsets.all(8),
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return ProfileFriendItem(
              ava: Image.asset(users[index].ava),
              name: users[index].name,
              profession: users[index].profession,
            );
          },
          shrinkWrap: true,
        ),
        TextButton(
          child: Text("ADD FRIEND"),
          onPressed: () {},
        ),
      ],
    );
  }
}

class ProfileFriendItem extends StatelessWidget {
  late Image ava;
  String name;
  String profession;
  double size;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
        child: ava,
        width: size,
        height: size,
      ),
      Text(name),
      Text(profession),
    ]);
  }

  ProfileFriendItem({
    Image? ava,
    this.name = "",
    this.profession = "",
    this.size = 50,
  }) {
    this.ava = ava ?? Image.asset('assets/images/unknown_person.jpg');
  }
}

class ProfileMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text("My media"),
        GridView(
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
              child: Text('Delete'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Add'),
            ),
          ],
        )
      ],
    );
  }

  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('assets/images/media/media-0${i+1}.jpg')));
  // assets\images\media
  // assets\images\media
}

class ProfileActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
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
