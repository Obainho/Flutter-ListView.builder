import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 8,
      children: List.generate(Defaults.listItems.length, (index) {
        return MaterialButton(
          onPressed: () {},
          child: ListTile(
            trailing: Icon(
              Defaults.icons[index],
              color: Colors.white,
            ),
            leading: Text(
              Defaults.listItems[index],
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        );
      }),
    );
  }
}

class PotraitLayout extends StatelessWidget {
  const PotraitLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Defaults.listItems.length,
      itemBuilder: (context, index) {
        return MaterialButton(
          onPressed: () {},
          child: ListTile(
            trailing: Icon(
              Defaults.icons[index],
              color: Colors.white,
            ),
            leading: Text(
              Defaults.listItems[index],
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

class Defaults {
  static var listItems = [
    "John",
    "Luke",
    "Peter",
    "Matthew",
    "Lawrence",
    "Kelvin",
    "Michael",
    "Emmanuel",
    "Austin",
    "Paul",
    "Thomas",
    "Hillary",
    "Jude",
    "Cosmas",
    "Andrew",
    "Johnson",
    "Jake",
    "Jacob",
    "Drew",
    "Jack",
    "Robert",
    "Lincoln",
    "Charles",
    "Marley",
    "Parker",
    "Scott",
    "Larry",
    "Smith",
  ];

  static var icons = [
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
    Icons.person,
    Icons.people,
    Icons.group_work,
    Icons.radio_button_unchecked,
    Icons.group,
    Icons.camera_outlined,
    Icons.video_camera_front_outlined,
  ];

  static var listItems2 = [
    "John",
    "Luke",
    "Peter",
    "Matthew",
    "Lawrence",
    "Kelvin",
    "Michael",
    "Emmanuel",
    "Austin",
    "Paul",
    "Thomas",
    "Hillary",
    "Jude",
    "Cosmas",
    "Andrew",
    "Johnson",
    "Jake",
    "Jacob",
    "Drew",
    "Jack",
    "Robert",
    "Lincoln",
    "Charles",
    "Marley",
    "Parker",
    "Scott",
    "Larry",
    "Smith",
  ];
}

Widget buildList() => ListView.builder(
      itemCount: Defaults.listItems.length,
      itemBuilder: (context, index) {
        final sortedItems = Defaults.listItems2
          ..sort((item1, item2) => item1.compareTo(item2));
        final itemList = sortedItems[index];

        return ListTile(
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(width: 5),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          leading: Text(
            itemList,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        );
      },
    );
