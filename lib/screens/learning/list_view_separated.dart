import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  ListViewSeparated({super.key});
  final List<String> numberList = ['List', 'View', 'Flutter', 'Learn'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 20,
            decoration: BoxDecoration(color: Colors.red),
          );
        },
      ),
    );
  }
}
