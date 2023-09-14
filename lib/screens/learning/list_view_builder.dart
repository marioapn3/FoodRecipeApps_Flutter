import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatelessWidget {
  ListViewBuilderLearn({super.key});
  final List<String> numberList = ['List', 'View', 'Flutter', 'Learn'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.red),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
      ),
    );
  }
}
