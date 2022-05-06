import 'package:flutter/material.dart';
import 'package:movie_app/screen/screen5.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen2");

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Pop"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen3');
              },
              child: Text("Push to Screen 3"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen1');
              },
              child: Text("Push to Screen 1 instead of Pop"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                String userName = "John Doe";
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Screen5(userName)));
              },
              child: Text("Push to Screen 5 using MaterialPageRoute"),
            ),
          ],
        ),
      ),
    );
  }
}
