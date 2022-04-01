import 'package:flutter/material.dart';
import 'package:test/components/drawer.dart';
import 'package:test/components/exercices/exercice_1.dart';
import 'package:test/components/exercices/exercice_2.dart';
import 'package:test/components/exercices/exercice7.dart';
import 'package:test/components/exercices/exercice8.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  List<Widget> list = [const Exercice7(), const Exercice8()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: list[index],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black,
        iconSize: 48,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'User'),
        ],
      ),
    );
  }
}
