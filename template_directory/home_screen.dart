import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen1");

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1_"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen2');
              },
              child: Text("Push to Screen 2"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                print(Navigator.of(context).canPop().toString());
              },
              child: Text("Can Pop"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text("Maybe Pop"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Pop"),
            )
          ],
        ),
      ),
    );
  }
}
