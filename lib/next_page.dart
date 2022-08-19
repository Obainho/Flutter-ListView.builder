import 'package:flutter/material.dart';
import 'widgets.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 64, 64),
        title: const Text("Contacts list"),
      ),
      body: buildList(),
    );
  }
}
