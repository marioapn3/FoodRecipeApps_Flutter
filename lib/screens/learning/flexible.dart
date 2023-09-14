import 'package:flutter/material.dart';

class FlexLearn extends StatelessWidget {
  const FlexLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Text('Widget 1'),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.green,
                child: Text('Widget 2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
