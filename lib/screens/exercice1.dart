import 'package:flutter/material.dart';

class Exercice1 extends StatelessWidget {
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
                  decoration: BoxDecoration(color: Colors.green),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(color: Colors.red),
                  height: 100,
                  width: 100),
              Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(color: Colors.yellow),
                  height: 100,
                  width: 100),
            ],
          ),
        ],
      ),
    );
  }
}