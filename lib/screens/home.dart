import 'package:flutter/material.dart';
import 'package:test/components/drawer.dart';
import 'package:test/screens/exercice4.dart';
import 'package:test/screens/exercice3.dart';
import 'package:test/screens/exercice2.dart';
import 'package:test/screens/exercice1.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  Widget _Exercice4 = Exercice4();
  Widget _Exercice3 = Exercice3();
  Widget _Exercice2 = Exercice2();
  Widget _Exercice1 = Exercice1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
      ),
      body: getBody(),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage("assets/bg-header.jpg"),
                    fit: BoxFit.cover)),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Flutter',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                title: const Text('Exercice 1'),
                onTap: () {
                  onTapHandler(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Exercice 2'),
                onTap: () {
                  this.onTapHandler(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Exercice 3'),
                onTap: () {
                  this.onTapHandler(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Exercice 4'),
                onTap: () {
                  this.onTapHandler(3);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      )),
      /* bottomNavigationBar: BottomNavigationBar(
        /* showSelectedLabels: false,
        showUnselectedLabels: false, */
        backgroundColor: Colors.blue,
        fixedColor: Colors.white,
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Exercice 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Exercice 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Exercice 4',
          ),
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ), */
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return _Exercice1;
    } else if (selectedIndex == 1) {
      return _Exercice2;
    } else if (selectedIndex == 2) {
      return _Exercice3;
    } else {
      return _Exercice4;
    }
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
