import 'package:flutter/material.dart';

class ListViewLearn extends StatelessWidget {
  const ListViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            color: Colors.red,
            child: const Center(
              child: Text('List', style: TextStyle(fontSize: 50)),
            ),
          ),
          Container(
            height: 250,
            color: Colors.blue,
            child: const Center(
              child: Text('View', style: TextStyle(fontSize: 50)),
            ),
          ),
          Container(
            height: 250,
            color: Colors.red,
            child: const Center(
              child: Text('Learn', style: TextStyle(fontSize: 50)),
            ),
          ),
          Container(
            height: 250,
            color: Colors.blue,
            child: const Center(
              child: Text('Flutter', style: TextStyle(fontSize: 50)),
            ),
          ),
        ],
      ),
    );
  }
}
