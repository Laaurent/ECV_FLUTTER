import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar Example"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    height: 100,
                    width: 100),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    height: 100,
                    width: 100),
                Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    height: 100,
                    width: 100),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    height: 100,
                    width: 100),
                Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    height: 100,
                    width: 100),
                Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    height: 100,
                    width: 100),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}
