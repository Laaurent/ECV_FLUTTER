import 'package:flutter/material.dart';

class Exercice2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
