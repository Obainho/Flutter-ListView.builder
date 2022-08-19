import 'package:flutter/material.dart';
import 'package:listview_builder/next_page.dart';
import 'widgets.dart';

class MainPage extends StatefulWidget {
  final String text;
  const MainPage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context)
        .orientation; // must be out of the MaterialApp class
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      appBar: AppBar(
        title: Text(widget.text),
        backgroundColor: const Color.fromARGB(255, 65, 64, 64),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NextPage(),
            ),
          );
        },
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        child: const Icon(Icons.message),
      ),
      body: orientation == Orientation.portrait
          ? const PotraitLayout()
          : const GridLayout(),
    );
  }
}
